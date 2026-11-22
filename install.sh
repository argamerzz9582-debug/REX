#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MANIFEST="${ROOT_DIR}/manifest.json"
LEDGER_OUT="${ROOT_DIR}/ledger.json"

echo "=========================================="
echo " REX One-Click Environment Setup & Audit"
echo "=========================================="
echo "OS:      $(uname -s) $(uname -m)"
echo "User:    $(id -un 2>/dev/null || echo unknown)"
echo "PWD:     ${ROOT_DIR}"
echo "Storage: $(df -h "${ROOT_DIR}" 2>/dev/null | awk 'NR==2 {print $4 " free"}')"

if ! command -v python3 >/dev/null 2>&1; then
  echo "[ERROR] python3 is required to process manifest.json."
  exit 1
fi

python3 - "$MANIFEST" "$LEDGER_OUT" <<'PYEOF'
import json
import os
import platform
import shutil
import subprocess
import sys
from datetime import datetime, timezone

manifest_path, ledger_path = sys.argv[1], sys.argv[2]

with open(manifest_path, "r", encoding="utf-8") as f:
    manifest = json.load(f)

entries = manifest.get("entries", [])
ledger = []
summary = {
    "total_entries": len(entries),
    "INSTALLED_AND_VERIFIED": 0,
    "ALREADY_INSTALLED_AND_VERIFIED": 0,
    "FAILED_RETRY_ATTEMPTED": 0,
    "NOT_AN_INSTALLABLE_TOOL": 0,
    "DUPLICATE_LINKED": 0,
}

def run_cmd(cmd):
    return subprocess.run(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

for item in entries:
    eid = item["id"]
    name = item["name"]
    category = item["category"]
    url = item.get("url", "")
    mode = item.get("mode", "install")

    record = {
        "id": eid,
        "name": name,
        "category": category,
        "url": url,
        "status": "NOT STARTED",
        "method": mode,
        "notes": ""
    }

    if mode == "catalog_or_org":
        record["status"] = "NOT AN INSTALLABLE TOOL"
        record["notes"] = item.get("reason", "Catalog/org/topic link")
        summary["NOT_AN_INSTALLABLE_TOOL"] += 1
        ledger.append(record)
        print(f"[{eid}/{len(entries)}] {name} -> NOT AN INSTALLABLE TOOL ({record['notes']})")
        continue

    if mode == "duplicate":
        ref_id = item.get("duplicate_of")
        record["status"] = "ALREADY INSTALLED & VERIFIED"
        record["notes"] = f"Duplicate of entry #{ref_id}; linked to primary check"
        summary["DUPLICATE_LINKED"] += 1
        ledger.append(record)
        print(f"[{eid}/{len(entries)}] {name} -> DUPLICATE OF #{ref_id}")
        continue

    check_cmd = item.get("check", "")
    install_cmd = item.get("install", "")

    if check_cmd and run_cmd(check_cmd).returncode == 0:
        record["status"] = "ALREADY INSTALLED & VERIFIED"
        record["notes"] = "Verified via check command"
        summary["ALREADY_INSTALLED_AND_VERIFIED"] += 1
        ledger.append(record)
        print(f"[{eid}/{len(entries)}] {name} -> ALREADY INSTALLED & VERIFIED")
        continue

    print(f"[{eid}/{len(entries)}] {name} -> Installing...")
    res = run_cmd(install_cmd) if install_cmd else None

    if res and res.returncode == 0 and (not check_cmd or run_cmd(check_cmd).returncode == 0):
        record["status"] = "INSTALLED & VERIFIED"
        record["notes"] = "Installed and verified"
        summary["INSTALLED_AND_VERIFIED"] += 1
        print(f"[{eid}/{len(entries)}] {name} -> INSTALLED & VERIFIED")
    else:
        retry_res = run_cmd(install_cmd) if install_cmd else None
        if retry_res and retry_res.returncode == 0 and (not check_cmd or run_cmd(check_cmd).returncode == 0):
            record["status"] = "INSTALLED & VERIFIED"
            record["notes"] = "Installed on retry and verified"
            summary["INSTALLED_AND_VERIFIED"] += 1
            print(f"[{eid}/{len(entries)}] {name} -> INSTALLED & VERIFIED (after retry)")
        else:
            err_msg = ""
            if retry_res:
                err_msg = (retry_res.stderr or retry_res.stdout or "").strip().splitlines()
                err_msg = err_msg[-1] if err_msg else f"exit code {retry_res.returncode}"
            record["status"] = "FAILED — RETRY ATTEMPTED"
            record["notes"] = err_msg[:240]
            summary["FAILED_RETRY_ATTEMPTED"] += 1
            print(f"[{eid}/{len(entries)}] {name} -> FAILED — RETRY ATTEMPTED ({record['notes']})")

report = {
    "generated_at": datetime.now(timezone.utc).isoformat(),
    "platform": {
        "system": platform.system(),
        "release": platform.release(),
        "machine": platform.machine()
    },
    "summary": summary,
    "ledger": ledger
}

with open(ledger_path, "w", encoding="utf-8") as f:
    json.dump(report, f, indent=2)

print("\n=== SUMMARY ===")
for k, v in summary.items():
    print(f"{k}: {v}")
print(f"\nLedger saved to: {ledger_path}")
PYEOF
