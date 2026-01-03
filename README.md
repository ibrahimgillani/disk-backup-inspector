# Disk Backup Inspector

A simple Linux shell script that inspects disk usage and creates safe backups of directories using `tar` and `rsync`.

This project is built to practice Linux filesystem concepts, disk inspection, and backup automation.

---

## Features

- Displays disk usage summary (`df -h`)
- Creates compressed backups using `tar`
- Supports timestamped backup files
- Performs safe `rsync` dry-run before syncing
- Avoids committing backup archives using `.gitignore`

---

## Requirements

- Linux system
- Bash shell
- `tar`, `rsync`, `df`
- Sudo access (for disk inspection)

---

## Usage

Make the script executable:

```bash
chmod +x disk_backup_inspector.sh
