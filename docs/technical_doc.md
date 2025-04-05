
# CyberDefense Technical Overview

## Architecture

- `main.py` is the entry point
- `core/` contains the core scanning and detection logic
- `utils/` provides helpers like logging and validation
- `config/` includes externalized settings
- `tests/` uses pytest to validate functionality

---

## Build & Deploy

- Linux: `build_deb.sh` / `build_appimage.sh`
- Windows: `build_exe.bat`
- CI/CD: `.github/workflows/deploy.yml`

---

## Security Layers

- Hardcoded paths avoided
- All builds validated via hash
- Minimal dependency tree

---

## Supported OS

- ✅ Windows 10/11
- ✅ Ubuntu 20.04+ / Debian 11+
- ✅ Portable Linux via `.AppImage`
