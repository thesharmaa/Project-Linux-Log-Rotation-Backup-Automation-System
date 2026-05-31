#!/bin/bash

log_file="/var/log/maintenance.log"

echo "======== $(date) Starting Maintenance ========" >> "$log_file"

echo "$(date) Running Log Rotation" >> "$log_file"
bash /home/ubuntu/linux-log-automation/scripts/log_rotate.sh /var/log/myapp /home/ubuntu/backups >> "$log_file" 2>&1

echo "$(date) Running Backup" >> "$log_file"
bash /home/ubuntu/linux-log-automation/scripts/backup.sh /home/ubuntu/files /home/ubuntu/files_backups >> "$log_file" 2>&1

echo "======== $(date) Maintenance Completed ========" >> "$log_file"
echo "" >> "$log_file"
