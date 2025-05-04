#!/bin/bash

BACKUP_DIR="$HOME/shell_migration_backup"

if [ ! -d "$BACKUP_DIR" ]; then
  echo "[!] Backup directory not found at $BACKUP_DIR"
  exit 1
fi

echo "[+] Restoring shell config from $BACKUP_DIR..."

cp "$BACKUP_DIR/.bash_history" ~/
cp "$BACKUP_DIR/.zsh_history" ~/
cp "$BACKUP_DIR/.bashrc" ~/
cp "$BACKUP_DIR/.bash_aliases" ~/
cp "$BACKUP_DIR/.inputrc" ~/
cp "$BACKUP_DIR/.zshrc" ~/
cp "$BACKUP_DIR"/.zcompdump* ~/ 2>/dev/null

chown $USER:$USER ~/.bash_history ~/.zsh_history ~/.bashrc ~/.zshrc ~/.inputrc ~/.bash_aliases ~/.zcompdump*
chmod 600 ~/.bash_history ~/.zsh_history

echo "[+] Restored. Please restart your terminal or run: source ~/.bashrc or source ~/.zshrc"
