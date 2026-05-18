# Beyonity Brand Hub — CLAUDE.md

## Projekt
Interaktiver Brand Hub für Beyonity — Single Source of Truth für CI, Produkte, Zielgruppen, Tone of Voice, Sales Assets und KI-Kontext.

## Dateipfad (canonical)
~/Dev/beyonity-brand/index.html

Vorgänger-Filename `beyonity-brand-hub.html` ist archiviert als `_archive-brand-hub-source.html`.

## Deploy-Befehl
cd ~/Dev/beyonity-brand && git add -A && git commit -m "feat/fix: [beschreibung]" && git push

## Live URL
https://mktbey.github.io/beyonity-brand/  
Passwort: `beyonity2025`

## Aktuelle Version
v1.7.11 (Mai 2026) — siehe `CHANGELOG.md` für vollständige Historie.

## Sektionen
1. Identität · Unternehmen · Zielgruppen
2. Customer Journey (4 Segmente A/B/C/D)
3. Quellen · Kundenstimmen
4. Produkte (6 Kategorien)
5. Visuelles
6. **Tone of Voice** mit Sub-Sektion **Sales Assets**
7. LLM / AI

## Sales-Hub-Architektur
**Datenquelle:** Google Sheet "Beyonity Sales Assets"
- Tab `team` (Spalten A–M): region, flag, name, position_de, position_en, location, booking_url, email, linkedin, photo, landing_page, small_navigator, active
- Tab `Assets`: region, type, label_de, label_en, url, lang, notes, active

**Fallback:** `sales-regions.json` im Repo-Root (Sheet überschreibt JSON).

**Asset-Pfade:**
- Verkäuferbilder: `assets/sales/team/{vorname-nachname}.webp` (1000×1000, transparente Ecken)
- Decks: `assets/sales/decks/`

**Person-Card-Komponenten:**
- Avatar (120px) mit eingebettetem Foto-Design (lavendel Kreis + Book-a-Demo-Badge)
- Name · Position · Location
- Actions: Email · LinkedIn
- 3 URL-Cards: Book a Demo (calendar) · Navigator (globe) · Small Navigator mit Preisen (tag)

## Technisches
- Mehrsprachig: DE/EN Toggle via `data-de`/`data-en` Attribute + TRANS JS-Objekt
- System Prompt: `#sys-prompt-de` / `#sys-prompt-en`
- Farben: `#3c57e1` (blau) · `#f8ff76` (gelb) · `#001a64` (dunkelblau) · `#d8ddf9` (hellblau)
- Font: Sora (Google Fonts) — ExtraBold für Headlines, Regular für Text
- Favicon: `favicon.png` (192px) + `apple-touch-icon.png` (180px) im Repo-Root
- GitHub: https://github.com/mktbey/beyonity-brand (public)
- Grounding Page: https://beyonity.com/de/groundingpage/

## Offene Aufgaben
Siehe `[Backlog]`-Sektion in `CHANGELOG.md`.
