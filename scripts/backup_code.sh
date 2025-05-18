# === CONFIGURATION ===
SOURCE_DIR="$HOME/code"
DEST_DIR="/alx_thor_pool_1/backups/"
EXCLUDES_FILE="./rsync_excludes.txt"
LOG_FILE="./rsync_backup.log"

# === CREATE DEST DIR IF NOT EXISTS ===
mkdir -p "$DEST_DIR"

# === RSYNC COMMAND ===
rsync -av \
  --exclude-from="$EXCLUDES_FILE" \
  --human-readable \
  --progress \
  "$(dirname "$SOURCE_DIR")/$(basename "$SOURCE_DIR")" \
  "$DEST_DIR" >> "$LOG_FILE" 2>&1
