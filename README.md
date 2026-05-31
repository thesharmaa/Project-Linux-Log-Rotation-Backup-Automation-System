# Linux Log Automation & Backup System 🚀

A DevOps practice project that automates **log rotation, backups, and scheduled maintenance** using Bash scripting and cron jobs.

---

## 🔥 Features

- Compress logs older than 7 days
- Delete compressed logs older than 30 days
- Create timestamped backups using tar.gz
- Validate backup creation
- Log all system activities
- Automated execution using cron (1 AM daily)

---

## 🛠️ Tech Stack

- Linux (Ubuntu)
- Bash Scripting
- cron scheduling
- tar + gzip
- find, awk, du utilities

---

## 📂 Scripts Overview

### 1. log_rotate.sh
- Finds `.log` files older than 7 days
- Compresses them using gzip
- Deletes `.gz` files older than 30 days

---

### 2. backup.sh
- Creates timestamped backups
- Example: `backup-2026-05-30.tar.gz`
- Verifies backup creation
- Deletes backups older than 14 days

---

### 3. maintenance.sh
- Combines log rotation + backup
- Logs all output to `/var/log/maintenance.log`
- Designed for cron automation

---

## ⏰ Cron Job

Run maintenance daily at 1 AM:

```bash
0 1 * * * bash /home/ubuntu/linux-log-automation/scripts/maintenance.sh
