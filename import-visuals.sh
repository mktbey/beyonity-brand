#!/usr/bin/env bash
# import-visuals.sh
# Beyonity Brand Hub — Präsentations-Visuals importieren & optimieren
#
# Verwendung:
#   ./import-visuals.sh <quell-ordner>
#
# Beispiel:
#   ./import-visuals.sh ~/Downloads/visuals

set -e

REPO_DIR="$HOME/Dev/beyonity-brand"
TARGET_DIR="$REPO_DIR/assets/presentations"

# ─── Farben ──────────────────────────────────────────────────
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
DIM='\033[2m'
NC='\033[0m'

# ─── Hilfsfunktionen ─────────────────────────────────────────
lower() { echo "$1" | tr '[:upper:]' '[:lower:]'; }
slugify() { echo "$1" | tr '[:upper:]' '[:lower:]' | tr ' _' '-' | tr -cd 'a-z0-9-'; }

filesize() {
  # macOS und Linux kompatibel
  stat -f%z "$1" 2>/dev/null || stat -c%s "$1"
}

human_size() {
  local bytes=$1
  if [ "$bytes" -lt 1024 ]; then
    echo "${bytes} B"
  elif [ "$bytes" -lt 1048576 ]; then
    echo "$((bytes / 1024)) KB"
  else
    echo "$(echo "scale=1; $bytes / 1048576" | bc) MB"
  fi
}

# ─── Argumente prüfen ────────────────────────────────────────
if [ $# -eq 0 ]; then
  echo -e "${RED}Fehler:${NC} Bitte Quellordner angeben."
  echo ""
  echo "Verwendung:  ./import-visuals.sh <quell-ordner>"
  echo "Beispiel:    ./import-visuals.sh ~/Downloads/visuals"
  exit 1
fi

SOURCE_DIR="${1%/}"

[ ! -d "$SOURCE_DIR" ] && { echo -e "${RED}Quellordner nicht gefunden:${NC} $SOURCE_DIR"; exit 1; }
[ ! -d "$REPO_DIR" ]   && { echo -e "${RED}Repo nicht gefunden:${NC} $REPO_DIR"; exit 1; }

# ─── Header ──────────────────────────────────────────────────
echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}  Beyonity Brand Hub — Visuals Import${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# ─── Tools prüfen ────────────────────────────────────────────
MISSING=()
command -v pngquant  >/dev/null 2>&1 || MISSING+=("pngquant")
command -v jpegoptim >/dev/null 2>&1 || MISSING+=("jpegoptim")
command -v bc        >/dev/null 2>&1 || MISSING+=("bc")

if [ ${#MISSING[@]} -gt 0 ]; then
  echo -e "${YELLOW}Fehlende Tools:${NC} ${MISSING[*]}"
  read -p "Jetzt via Homebrew installieren? (j/n): " INSTALL
  if [ "$(lower "$INSTALL")" = "j" ]; then
    brew install "${MISSING[@]}"
  else
    echo "Abbruch."
    exit 1
  fi
fi

# ─── Zielordner anlegen ──────────────────────────────────────
mkdir -p "$TARGET_DIR"

# ─── Bilder einsammeln ───────────────────────────────────────
IMAGES=()
while IFS= read -r -d '' file; do
  IMAGES+=("$file")
done < <(find "$SOURCE_DIR" -maxdepth 1 -type f \
  \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) -print0 | sort -z)

if [ ${#IMAGES[@]} -eq 0 ]; then
  echo -e "${RED}Keine Bilder (.png/.jpg/.jpeg) in $SOURCE_DIR gefunden.${NC}"
  exit 1
fi

echo -e "${GREEN}Gefunden:${NC} ${#IMAGES[@]} Bilder in $SOURCE_DIR"
echo ""
echo -e "${DIM}Pro Bild fragt das Skript nach einem sprechenden Namen.${NC}"
echo -e "${DIM}Enter = Originalname behalten · s = überspringen${NC}"
echo ""

# ─── Loop ────────────────────────────────────────────────────
TOTAL_BEFORE=0
TOTAL_AFTER=0
PROCESSED=0
SKIPPED=0

for IMG in "${IMAGES[@]}"; do
  FILENAME=$(basename "$IMG")
  EXT_LOWER=$(lower "${FILENAME##*.}")
  BASE="${FILENAME%.*}"

  SIZE_BEFORE=$(filesize "$IMG")

  echo -e "${BLUE}━━━${NC} ${FILENAME} ${DIM}($(human_size "$SIZE_BEFORE"))${NC}"
  read -p "    Neuer Name: " NEW_NAME </dev/tty

  if [ "$(lower "$NEW_NAME")" = "s" ]; then
    echo -e "    ${YELLOW}übersprungen${NC}"
    echo ""
    SKIPPED=$((SKIPPED + 1))
    continue
  fi

  [ -z "$NEW_NAME" ] && NEW_NAME="$BASE"
  SLUG=$(slugify "$NEW_NAME")
  [ -z "$SLUG" ] && SLUG="$BASE"

  TARGET="$TARGET_DIR/${SLUG}.${EXT_LOWER}"

  if [ -f "$TARGET" ]; then
    read -p "    Existiert bereits. Überschreiben? (j/n): " OW </dev/tty
    if [ "$(lower "$OW")" != "j" ]; then
      echo -e "    ${YELLOW}übersprungen${NC}"
      echo ""
      SKIPPED=$((SKIPPED + 1))
      continue
    fi
  fi

  cp "$IMG" "$TARGET"

  # ─── Optimieren ──
  case "$EXT_LOWER" in
    png)
      pngquant --quality=70-85 --ext .png --force --skip-if-larger "$TARGET" 2>/dev/null || true
      ;;
    jpg|jpeg)
      jpegoptim --max=85 --strip-all --quiet "$TARGET"
      ;;
  esac

  SIZE_AFTER=$(filesize "$TARGET")
  SAVED_PCT=$(( 100 - (SIZE_AFTER * 100 / SIZE_BEFORE) ))

  echo -e "    ${GREEN}✓${NC} ${SLUG}.${EXT_LOWER} · $(human_size "$SIZE_AFTER") ${DIM}(-${SAVED_PCT}%)${NC}"
  echo ""

  TOTAL_BEFORE=$((TOTAL_BEFORE + SIZE_BEFORE))
  TOTAL_AFTER=$((TOTAL_AFTER + SIZE_AFTER))
  PROCESSED=$((PROCESSED + 1))
done

# ─── Summary ─────────────────────────────────────────────────
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}Fertig!${NC}"
echo ""
echo -e "  Verarbeitet:  ${PROCESSED}"
echo -e "  Übersprungen: ${SKIPPED}"
if [ "$PROCESSED" -gt 0 ]; then
  SAVED_TOTAL=$(( 100 - (TOTAL_AFTER * 100 / TOTAL_BEFORE) ))
  echo -e "  Vorher:       $(human_size "$TOTAL_BEFORE")"
  echo -e "  Nachher:      $(human_size "$TOTAL_AFTER") ${DIM}(-${SAVED_TOTAL}%)${NC}"
fi
echo -e "  Zielordner:   ${TARGET_DIR}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "Nächste Schritte:"
echo "  1. cd ~/Dev/beyonity-brand"
echo "  2. claude"
echo "  3. Prompt:"
echo "     Scanne assets/presentations/ und baue die dritte Gruppe"
echo "     'Präsentations-Visuals' in der Visuelles-Section."
echo "     Karten-Grid analog zu den Produkt-Icons."
echo ""
