# AGENT Instructions — One-Command REX Toolchain Setup

## Single Command
Run this single command from the repository root to inspect, install/verify compatible entries, and generate `ledger.json`:

```bash
chmod +x install.sh && ./install.sh
```

## Execution Rules
1. Always run `./install.sh` first so environment checks, idempotent skips, retries, and `ledger.json` generation happen automatically.
2. Follow `REX-main/AGENT.md` rules for MCP registration, skill discovery, and reporting blockers (`BLOCKED — PLATFORM INCOMPATIBLE`, `BLOCKED — PERMISSION REQUIRED`, `BLOCKED — LICENSE REQUIRED`, `BLOCKED — DEPENDENCY`).
3. Do not claim 100% completion if any entry failed or requires manual/OS-specific/GUI setup.
