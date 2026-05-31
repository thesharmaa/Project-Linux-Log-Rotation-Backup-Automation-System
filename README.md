# 🚀 Linux Log Rotation & Backup Automation System

A DevOps-style automation project that handles log rotation, backups, and scheduled maintenance using Bash scripting and cron jobs.

---

## 📌 Features

- Compress `.log` files older than 7 days
- Delete `.gz` files older than 30 days
- Create timestamped backups (`tar.gz`)
- Verify backup creation & print metadata
- Auto cleanup of old backups (14 days retention)
- Centralized logging system
- Cron-based scheduling (1 AM daily)

---

## 🏗️ Architecture

Log Rotation → Backup Creation → Maintenance Orchestrator → Cron Scheduler

---

linux-log-automation/
│
├── scripts/
│   ├── log_rotate.sh
│   ├── backup.sh
│   └── maintenance.sh
│
├── config/
│   └── paths.conf
│
├── logs/
│   └── maintenance.log   (runtime generated)
│
├── backups/              (runtime generated)
│
├── README.md
├── .gitignore
└── LICENSE
---

## ⚙️ How to Run

```bash
chmod +x scripts/*.sh

./scripts/log_rotate.sh /var/log/myapp /home/ubuntu/backups

./scripts/backup.sh /home/ubuntu/files /home/ubuntu/files_backups

./scripts/maintenance.sh
