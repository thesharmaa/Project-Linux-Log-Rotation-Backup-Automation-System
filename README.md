# 🚀 Linux Log Automation & Backup System

A Bash scripting project that automates:

- 📦 Directory Backups
- 📝 Log Rotation
- 🗑️ Old Backup Cleanup
- ⏰ Scheduled Maintenance with Cron

This project demonstrates Linux administration and DevOps automation skills commonly used in production environments.

---

## 📂 Project Structure

```text
linux-log-automation/
├── scripts/
│   ├── backup.sh
│   ├── log_rotate.sh
│   └── maintenance.sh
├── backups/
├── files_backups/
└── README.md
```

---

## ✨ Features

### 📦 Backup Automation

The `backup.sh` script:

- Validates source directory
- Creates destination directory automatically
- Creates timestamped backups
- Compresses files using tar.gz
- Displays backup size
- Removes backups older than 14 days

#### Example

```bash
bash backup.sh /home/ubuntu/files /home/ubuntu/files_backups
```

---

### 📝 Log Rotation

The `log_rotate.sh` script:

- Compresses `.log` files older than 7 days
- Uses gzip compression
- Deletes compressed logs older than 30 days
- Displays processed file counts

#### Example

```bash
bash log_rotate.sh /var/log/myapp /home/ubuntu/backups
```

---

### 🔧 Maintenance Automation

The `maintenance.sh` script:

- Executes log rotation
- Executes backups
- Records execution logs
- Captures script output and errors
- Provides centralized maintenance workflow

#### Log Location

```text
/var/log/maintenance.log
```

---

## ⏰ Cron Job Setup

Run maintenance automatically every day at **1:00 AM**.

### Edit Crontab

```bash
crontab -e
```

### Add the Following Entry

```bash
0 1 * * * bash /home/ubuntu/linux-log-automation/scripts/maintenance.sh
```

### Cron Breakdown

| Expression | Meaning |
|------------|----------|
| 0 | Minute 0 |
| 1 | 1 AM |
| * | Every Day |
| * | Every Month |
| * | Every Weekday |

---

## 🛠️ Prerequisites

- Linux (Ubuntu/CentOS/RHEL)
- Bash
- tar
- gzip
- cron

### Verify Installation

```bash
tar --version
gzip --version
crontab -l
```

---

## 🚀 Installation

### Clone the Repository

```bash
git clone https://github.com/your-username/linux-log-automation.git
```

### Move to Project Directory

```bash
cd linux-log-automation
```

### Provide Execute Permissions

```bash
chmod +x scripts/*.sh
```

### Run Manually

```bash
bash scripts/maintenance.sh
```

---

## 📋 Sample Output

### Backup Script

```text
Backup Success
Archive: backup-2026-06-03-01-00-00.tar.gz
Size: 120M
```

### Log Rotation Script

```text
Compressed files: 12
Deleted files: 3
```

---

## ⚠️ Error Handling

The scripts include validation checks.

### Source Directory Validation

```bash
if [ ! -d "$source" ]; then
    echo "Error: Source directory does not exist"
    exit 1
fi
```

### Exit Codes

| Code | Description |
|------|-------------|
| 0 | Success |
| 1 | Failure |

---

## 🎯 Skills Demonstrated

### Linux Administration

- File Management
- Log Management
- Backup Operations

### Shell Scripting

- Variables
- Conditional Statements
- Command Substitution
- Error Handling
- File Operations

### DevOps Fundamentals

- Automation
- Cron Scheduling
- System Maintenance
- Operational Reliability

---

## 🔮 Future Improvements

- Email notifications on failures
- AWS S3 backup integration
- Backup integrity verification
- Configurable retention policies
- Monitoring dashboard
- Multi-directory backup support

---

## 👨‍💻 Author

**Aman**

Cloud | DevOps | Linux Enthusiast

Passionate about automation, cloud infrastructure, Linux administration, and DevOps practices.