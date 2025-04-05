
# CyberDefense User Guide

## 🔧 Setup

Clone the repository and install:
```bash
git clone https://github.com/paracryptid/cyberdefense.git
cd cyberdefense
pip install .
```

Or use pre-built `.deb`, `.exe`, or `.AppImage` from the Releases section.

---

## ⚙️ Commands

- `cyberdefense --scan [path]` → Perform scan
- `cyberdefense --monitor` → Start monitor
- `cyberdefense --report` → Generate report

---

## 🔐 Security

- Validate input/output paths
- Use `.env` to store any API keys
- All logs are sanitized before writing

---

## 🛠️ Maintenance

- Run `pytest` weekly
- Keep dependencies updated with `pip-review`
- Check GitHub CI for automated build results
