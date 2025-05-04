#!/bin/bash

BACKUP_DIR="$HOME/shell_migration_backup"
mkdir -p "$BACKUP_DIR"

echo "[+] Backing up shell files to $BACKUP_DIR..."

cp ~/.bash_history "$BACKUP_DIR/" 2>/dev/null
cp ~/.zsh_history "$BACKUP_DIR/" 2>/dev/null
cp ~/.bashrc "$BACKUP_DIR/" 2>/dev/null
cp ~/.bash_aliases "$BACKUP_DIR/" 2>/dev/null
cp ~/.inputrc "$BACKUP_DIR/" 2>/dev/null
cp ~/.zshrc "$BACKUP_DIR/" 2>/dev/null
cp ~/.zcompdump* "$BACKUP_DIR/" 2>/dev/null

echo "[+] Done. You can now transfer $BACKUP_DIR via SCP or USB."

# Uncomment for SCP:
# read -p "Enter username@destination_ip: " target
# scp -r "$BACKUP_DIR" "$target":~
