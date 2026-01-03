
A Linux shell tool that inspects disk usage, checks mounted filesystems,
and safely creates backups using `tar` and `rsync` dry-runs.

This project is built to strengthen Linux filesystem, backup,
and scripting concepts.

---

## Features

- Disk usage summary (`df -h`)
- Interactive directory backup selection
- Compressed `.tar.gz` backups
- Safe `rsync --dry-run` preview
- Ignores sockets, temp files, and logs
- Designed for learning Linux internals

---

## Requirements

- Linux system
- Bash shell
- `tar`, `rsync`, `df`
- Sudo access (optional for system paths)

---

## Usage

```bash
chmod +x disk_backup_inspector.sh
./disk_backup_inspector.sh
