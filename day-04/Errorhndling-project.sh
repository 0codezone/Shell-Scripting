#!/bin/bash

set -e  # agar koi bhi command fail hui toh script yahi pe ruk jayegi

LOGFILE="backup.log"   # log file ka naam

trap 'echo "⚠️  Error occurred at line $LINENO. Check $LOGFILE" | tee -a $LOGFILE' ERR

SOURCE_DIR="/var/www/html"
BACKUP_DIR="/home/ubuntu/backup"
BACKUP_FILE="site_backup_$(date +%F_%H-%M-%S).tar.gz"

echo "[$(date)]  Backup started" | tee -a $LOGFILE

# check if source directory exists
if [ -d "$SOURCE_DIR" ]; then
    echo "Source directory exists: $SOURCE_DIR" | tee -a $LOGFILE
else
    echo " Source directory not found: $SOURCE_DIR" | tee -a $LOGFILE
    exit 1
fi

# create backup folder if not exists
mkdir -p "$BACKUP_DIR"

# create compressed backup
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

echo " Backup created at: $BACKUP_DIR/$BACKUP_FILE" | tee -a $LOGFILE
echo "[$(date)]  Backup completed successfully!" | tee -a $LOGFILE

