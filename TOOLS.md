# TOOLS.md — Reverse Engineering Tool Manifest

This file is the catalog of tools, MCP servers, skills, repositories, and resources to evaluate for installation. `AGENT.md` contains the mandatory workflow for installing, configuring, and verifying this manifest.

## Installation rules
- Evaluate every listed entry; don't silently skip anything.
- Validate the source URL/repository before installing.
- Prefer official sources.
- Check compatibility with the current environment.
- Verify installations and record versions.
- Some GUI, Windows-only, macOS-only, licensed, or hardware-dependent tools may not be installable in the current environment; document the reason and possible compatible route.
- Entries labeled **[INSTALL / EVALUATE]** should be checked and installed if compatible and useful/available. The label does not override platform, licensing, permission, or safety limitations.

---

## 1. Core Reverse Engineering & Binary Analysis

- [INSTALL / EVALUATE] Ghidra — https://github.com/NationalSecurityAgency/ghidra
- [INSTALL / EVALUATE] radare2 — https://github.com/radareorg/radare2
- [INSTALL / EVALUATE] Rizin — https://github.com/rizinorg/rizin
- [INSTALL / EVALUATE] Cutter — https://github.com/rizinorg/cutter
- [INSTALL / EVALUATE] IDA Free — https://hex-rays.com/ida-free
- [INSTALL / EVALUATE] Binary Ninja — https://binary.ninja/
- [INSTALL / EVALUATE] REDasm — https://github.com/REDasm/REDasm
- [INSTALL / EVALUATE] Capstone — https://github.com/capstone-engine/capstone
- [INSTALL / EVALUATE] LIEF — https://github.com/lief-project/LIEF
- [INSTALL / EVALUATE] ImHex — https://github.com/WerWolv/ImHex
- [INSTALL / EVALUATE] Hex Fiend — https://github.com/HexFiend/HexFiend
- [INSTALL / EVALUATE] HxD — https://mh-nexus.de/en/hxd/
- [INSTALL / EVALUATE] RetDec — https://github.com/avast/retdec

## 2. Reverse Engineering MCP Servers

- [INSTALL / EVALUATE] Ghidra MCP — https://github.com/LaurieWired/GhidraMCP
- [INSTALL / EVALUATE] REA — https://github.com/joelthelion/REA
- [INSTALL / EVALUATE] radare2 MCP — https://github.com/radareorg/radare2
- [INSTALL / EVALUATE] IDA MCP — https://github.com/mrex0/ida-mcp
- [INSTALL / EVALUATE] ReVa — https://github.com/cyberkaida/ReVa
- [INSTALL / EVALUATE] Binary Ninja MCP — https://github.com/Vector35
- [INSTALL / EVALUATE] PyGhidra MCP — https://github.com/mandiant/pyghidra
- [INSTALL / EVALUATE] GhidrAssistMCP — https://github.com/ashishbist/GhidrAssistMCP
- [INSTALL / EVALUATE] Ghidra Headless MCP — https://github.com/13xforever/ghidra-mcp
- [INSTALL / EVALUATE] Ghidra RPC — https://github.com/ghidra
- [INSTALL / EVALUATE] GhidrAllMCP — https://github.com/ghidra
- [INSTALL / EVALUATE] Ghidra CLI / headless workflows — https://github.com/NationalSecurityAgency/ghidra
- [INSTALL / EVALUATE] Reversecore MCP resources — https://github.com/reversecore
- [INSTALL / EVALUATE] Awesome RE MCP catalogs — https://github.com/topics/reverse-engineering
- [INSTALL / EVALUATE] Official MCP servers and SDK — https://github.com/modelcontextprotocol

**Note:** Several entries above may be project names, organization pages, catalogs, or umbrella repositories rather than a specific installable server. Verify the exact project/source before installation and record unresolved/ambiguous URLs rather than guessing.

## 3. Android APK & App Reverse Engineering

- [INSTALL / EVALUATE] JADX — https://github.com/skylot/jadx
- [INSTALL / EVALUATE] JADX AI MCP resources — https://github.com/topics/jadx
- [INSTALL / EVALUATE] Apktool — https://github.com/iBotPeaches/Apktool
- [INSTALL / EVALUATE] Smali / Baksmali — https://github.com/JesusFreke/smali
- [INSTALL / EVALUATE] dex2jar — https://github.com/pxb1988/dex2jar
- [INSTALL / EVALUATE] Androguard — https://github.com/androguard/androguard
- [INSTALL / EVALUATE] APKLab — https://github.com/APKLab/APKLab
- [INSTALL / EVALUATE] MobSF — https://github.com/MobSF/Mobile-Security-Framework-MobSF
- [INSTALL / EVALUATE] Frida — https://github.com/frida/frida
- [INSTALL / EVALUATE] Frida MCP resources — https://github.com/topics/frida-mcp
- [INSTALL / EVALUATE] Objection — https://github.com/sensepost/objection
- [INSTALL / EVALUATE] Android Debug Bridge (ADB) / Platform Tools — https://developer.android.com/tools/releases/platform-tools
- [INSTALL / EVALUATE] JADX headless/automation resources — https://github.com/skylot/jadx
- [INSTALL / EVALUATE] Apktool automation/MCP resources — https://github.com/iBotPeaches/Apktool
- [INSTALL / EVALUATE] Android Studio — https://developer.android.com/studio
- [INSTALL / EVALUATE] APK Analyzer — https://developer.android.com/studio/build/apk-analyzer
- [INSTALL / EVALUATE] APKiD — https://github.com/rednaga/APKiD

## 4. Windows, PE & .NET Analysis

- [INSTALL / EVALUATE] x64dbg — https://github.com/x64dbg/x64dbg
- [INSTALL / EVALUATE] x64dbg automation/plugins — https://github.com/x64dbg
- [INSTALL / EVALUATE] x64dbg MCP resources — https://github.com/topics/x64dbg-mcp
- [INSTALL / EVALUATE] WinDbg — https://learn.microsoft.com/windows-hardware/drivers/debugger/
- [INSTALL / EVALUATE] ILSpy — https://github.com/icsharpcode/ILSpy
- [INSTALL / EVALUATE] dnSpyEx — https://github.com/dnSpyEx/dnSpy
- [INSTALL / EVALUATE] Detect It Easy (DIE) — https://github.com/horsicq/Detect-It-Easy
- [INSTALL / EVALUATE] PE-bear — https://github.com/hasherezade/pe-bear
- [INSTALL / EVALUATE] CFF Explorer — https://ntcore.com/?page_id=388
- [INSTALL / EVALUATE] PEStudio — https://www.winitor.com/
- [INSTALL / EVALUATE] Resource Hacker — https://github.com/dnGrep/ResourceHacker
- [INSTALL / EVALUATE] Process Explorer — https://learn.microsoft.com/sysinternals/downloads/process-explorer
- [INSTALL / EVALUATE] Process Monitor — https://learn.microsoft.com/sysinternals/downloads/procmon
- [INSTALL / EVALUATE] Sysinternals Suite — https://learn.microsoft.com/sysinternals/
- [INSTALL / EVALUATE] FLARE-VM — https://github.com/mandiant/flare-vm

## 5. Firmware & Embedded Reverse Engineering

- [INSTALL / EVALUATE] Binwalk — https://github.com/ReFirmLabs/binwalk
- [INSTALL / EVALUATE] Binwalk MCP resources — https://github.com/topics/binwalk-mcp
- [INSTALL / EVALUATE] Unblob — https://github.com/unblob/unblob
- [INSTALL / EVALUATE] EMBA — https://github.com/e-m-b-a/emba
- [INSTALL / EVALUATE] FACT — https://github.com/FACT-Project/FACT_core
- [INSTALL / EVALUATE] FirmAE — https://github.com/firmadyne/firmadyne
- [INSTALL / EVALUATE] QEMU — https://github.com/qemu/qemu
- [INSTALL / EVALUATE] Firmadyne — https://github.com/firmadyne/firmadyne
- [INSTALL / EVALUATE] Firmware Analysis Toolkit resources — https://github.com/topics/firmware-analysis

## 6. Game & Game Asset Reverse Engineering

- [INSTALL / EVALUATE] AssetRipper — https://github.com/AssetRipper/AssetRipper
- [INSTALL / EVALUATE] AssetStudio — https://github.com/Perfare/AssetStudio
- [INSTALL / EVALUATE] UnityPy — https://github.com/K0lb3/UnityPy
- [INSTALL / EVALUATE] Il2CppDumper — https://github.com/Perfare/Il2CppDumper
- [INSTALL / EVALUATE] Il2CppInspector — https://github.com/djkaty/Il2CppInspector
- [INSTALL / EVALUATE] Cpp2IL — https://github.com/SamboyCoding/Cpp2IL
- [INSTALL / EVALUATE] FModel — https://github.com/4sval/FModel
- [INSTALL / EVALUATE] UAssetAPI — https://github.com/atenfyr/UAssetAPI
- [INSTALL / EVALUATE] Cheat Engine — https://github.com/cheat-engine/cheat-engine
- [INSTALL / EVALUATE] RenderDoc — https://github.com/baldurk/renderdoc
- [INSTALL / EVALUATE] apitrace — https://github.com/apitrace/apitrace
- [INSTALL / EVALUATE] ReShade — https://github.com/crosire/reshade
- [INSTALL / EVALUATE] Unity Explorer — https://github.com/sinai-dev/UnityExplorer

## 7. Web & Frontend Reverse Engineering

- [INSTALL / EVALUATE] Playwright — https://github.com/microsoft/playwright
- [INSTALL / EVALUATE] Playwright MCP — https://github.com/microsoft/playwright-mcp
- [INSTALL / EVALUATE] Chrome DevTools MCP — https://github.com/ChromeDevTools/chrome-devtools-mcp
- [INSTALL / EVALUATE] Chrome DevTools — https://developer.chrome.com/docs/devtools/
- [INSTALL / EVALUATE] mitmproxy — https://github.com/mitmproxy/mitmproxy
- [INSTALL / EVALUATE] HTTP Toolkit — https://github.com/httptoolkit/httptoolkit
- [INSTALL / EVALUATE] Burp Suite Community — https://portswigger.net/burp/communitydownload
- [INSTALL / EVALUATE] Retire.js — https://github.com/RetireJS/retire.js
- [INSTALL / EVALUATE] JS Beautifier — https://github.com/beautifier/js-beautifier
- [INSTALL / EVALUATE] Source Map Explorer — https://github.com/danvk/source-map-explorer
- [INSTALL / EVALUATE] AST Explorer — https://github.com/fkling/ast-explorer
- [INSTALL / EVALUATE] Wappalyzer — https://github.com/wappalyzer/wappalyzer
- [INSTALL / EVALUATE] WhatWeb — https://github.com/urbanadventurer/WhatWeb
- [INSTALL / EVALUATE] HTTPX — https://github.com/projectdiscovery/httpx
- [INSTALL / EVALUATE] Katana — https://github.com/projectdiscovery/katana

## 8. Network & Protocol Analysis

- [INSTALL / EVALUATE] Wireshark — https://github.com/wireshark/wireshark
- [INSTALL / EVALUATE] TShark — https://github.com/wireshark/wireshark
- [INSTALL / EVALUATE] Scapy — https://github.com/secdev/scapy
- [INSTALL / EVALUATE] tcpdump — https://github.com/the-tcpdump-group/tcpdump
- [INSTALL / EVALUATE] mitmproxy — https://github.com/mitmproxy/mitmproxy
- [INSTALL / EVALUATE] Nmap — https://github.com/nmap/nmap
- [INSTALL / EVALUATE] Netcat — https://nc110.sourceforge.io/
- [INSTALL / EVALUATE] HTTP Toolkit — https://github.com/httptoolkit/httptoolkit
- [INSTALL / EVALUATE] Proxify — https://github.com/projectdiscovery/proxify
- [INSTALL / EVALUATE] Zeek — https://github.com/zeek/zeek
- [INSTALL / EVALUATE] Suricata — https://github.com/OISF/suricata
- [INSTALL / EVALUATE] OpenSSL — https://github.com/openssl/openssl

## 9. Malware & Static Analysis

- [INSTALL / EVALUATE] YARA-X — https://github.com/VirusTotal/yara-x
- [INSTALL / EVALUATE] capa — https://github.com/mandiant/capa
- [INSTALL / EVALUATE] FLOSS — https://github.com/mandiant/flare-floss
- [INSTALL / EVALUATE] Volatility 3 — https://github.com/volatilityfoundation/volatility3
- [INSTALL / EVALUATE] angr — https://github.com/angr/angr
- [INSTALL / EVALUATE] Qiling — https://github.com/qilingframework/qiling
- [INSTALL / EVALUATE] LIEF — https://github.com/lief-project/LIEF
- [INSTALL / EVALUATE] PEfile — https://github.com/erocai/pefile
- [INSTALL / EVALUATE] Miasm — https://github.com/cea-sec/miasm
- [INSTALL / EVALUATE] Triton — https://github.com/JonathanSalwan/Triton
- [INSTALL / EVALUATE] DynamoRIO — https://github.com/DynamoRIO/dynamorio
- [INSTALL / EVALUATE] Unicorn Engine — https://github.com/unicorn-engine/unicorn

## 10. API, Database & Data Format Analysis

- [INSTALL / EVALUATE] Postman — https://github.com/postmanlabs
- [INSTALL / EVALUATE] Insomnia — https://github.com/Kong/insomnia
- [INSTALL / EVALUATE] Bruno — https://github.com/usebruno/bruno
- [INSTALL / EVALUATE] OpenAPI tools — https://github.com/OAI/OpenAPI-Specification
- [INSTALL / EVALUATE] Protocol Buffers — https://github.com/protocolbuffers/protobuf
- [INSTALL / EVALUATE] Apidog — https://apidog.com/
- [INSTALL / EVALUATE] Swagger UI — https://github.com/swagger-api/swagger-ui
- [INSTALL / EVALUATE] SQLite Browser — https://github.com/sqlitebrowser/sqlitebrowser
- [INSTALL / EVALUATE] DBeaver — https://github.com/dbeaver/dbeaver
- [INSTALL / EVALUATE] SQLMap — https://github.com/sqlmapproject/sqlmap
- [INSTALL / EVALUATE] GraphQL Voyager — https://github.com/APIs-guru/graphql-voyager

## 11. AI-Assisted Reverse Engineering & Skill Collections

These are discovery/catalog resources. Find specific, maintained, installable projects or skill files from them; do not attempt to install a catalog webpage as if it were a program.

- [DISCOVER / EVALUATE] Awesome AI Reverse Engineering — https://github.com/topics/ai-reverse-engineering
- [DISCOVER / EVALUATE] Awesome RE MCP — https://github.com/topics/reverse-engineering-mcp
- [DISCOVER / EVALUATE] RE MCP Catalog — https://github.com/topics/re-mcp
- [DISCOVER / EVALUATE] Awesome Reverse Engineering — https://github.com/enaud/awesome-re
- [DISCOVER / EVALUATE] Reverse Engineering Playground — https://github.com/topics/reverse-engineering
- [INSTALL / EVALUATE] ReVa — https://github.com/cyberkaida/ReVa
- [INSTALL / EVALUATE] GhidrAssist — https://github.com/ghidra
- [INSTALL / EVALUATE] r2ai — https://github.com/radareorg/r2ai
- [INSTALL / EVALUATE] LLM4Decompile — https://github.com/albertan017/LLM4Decompile
- [DISCOVER / EVALUATE] Official MCP servers — https://github.com/modelcontextprotocol/servers
- [DISCOVER / EVALUATE] Awesome MCP — https://github.com/topics/awesome-mcp
- [DISCOVER / EVALUATE] SpecterOps resources — https://github.com/specterops

## 12. Supporting Development Infrastructure

- [INSTALL / EVALUATE] Python — https://www.python.org/
- [INSTALL / EVALUATE] Node.js — https://nodejs.org/
- [INSTALL / EVALUATE] Git — https://git-scm.com/
- [INSTALL / EVALUATE] Docker — https://www.docker.com/
- [INSTALL / EVALUATE] uv — https://github.com/astral-sh/uv
- [INSTALL / EVALUATE] Bun — https://github.com/oven-sh/bun
- [INSTALL / EVALUATE] CMake — https://github.com/Kitware/CMake
- [INSTALL / EVALUATE] LLVM — https://github.com/llvm/llvm-project
- [INSTALL / EVALUATE] VS Code — https://github.com/microsoft/vscode
- [INSTALL / EVALUATE] Eclipse Temurin JDK — https://github.com/adoptium/temurin-build
- [INSTALL / EVALUATE] Android SDK — https://developer.android.com/studio
- [INSTALL / EVALUATE] Android Platform Tools / ADB — https://developer.android.com/tools/releases/platform-tools
- [INSTALL / EVALUATE] ImHex — https://github.com/WerWolv/ImHex
- [INSTALL / EVALUATE] SQLite Browser — https://github.com/sqlitebrowser/sqlitebrowser

---

## Completion Checklist

- [ ] Entire manifest read
- [ ] Environment inventory completed
- [ ] Existing tools detected and verified
- [ ] Core RE tools evaluated
- [ ] RE MCP servers evaluated
- [ ] Android tools evaluated
- [ ] Windows/PE/.NET tools evaluated
- [ ] Firmware tools evaluated
- [ ] Game RE tools evaluated
- [ ] Web RE tools evaluated
- [ ] Network analysis tools evaluated
- [ ] Malware/static analysis tools evaluated
- [ ] API/database tools evaluated
- [ ] AI RE resources and skills evaluated
- [ ] Infrastructure dependencies evaluated
- [ ] MCP configurations checked and verified
- [ ] Skills installed and discoverability checked
- [ ] All failures and blockers recorded
- [ ] Final status report generated
