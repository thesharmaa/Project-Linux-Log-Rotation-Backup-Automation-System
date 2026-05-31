# System Architecture

## Flow

1. log_rotate.sh
   ↓
   compress logs older than 7 days

2. backup.sh
   ↓
   creates full system backup

3. maintenance.sh
   ↓
   orchestrates both scripts

4. cron job
   ↓
   runs daily at 1 AM automatically
