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
Passwort: beyonity2025

## Technisches
- Einsprachig: DE/EN Toggle via data-de/data-en Attribute + TRANS JS-Objekt
- Lang-State: `curLang` Variable, `setLang(lang)` Funktion (patched durch Sales-Hub für Re-Render)
- System Prompt: #sys-prompt-de / #sys-prompt-en
- Farben: #3c57e1 (blau) · #f8ff76 (gelb) · #001a64 (dunkelblau) · #d8ddf9 (hellblau/lavendel)
- Font: Sora (Google Fonts) — ExtraBold für Headlines, Regular für Text
- GitHub Repo: https://github.com/mktbey/beyonity-brand (public)
- Grounding Page: https://beyonity.com/de/groundingpage/

## Sales Hub (v1.7+)
- Datenpflege: Google Sheet "Beyonity Sales Assets"
  - Edit-URL: https://docs.google.com/spreadsheets/d/16RM_7QTRXYB1iUpC83m_zDKbFGNBu8bMxzYESbfEJt4/edit
  - CSV Team (gid 197513859): Tab `team` — Spalten: region, name, position_de, position_en, location, booking_url, email, linkedin, photo, active, landing_page, small_navigator
  - CSV Assets (gid 2027870234): Tab `Assets` — Spalten: region, type, label_de, label_en, url, lang, active
- JSON-Fallback: sales-regions.json (manuell gepflegt, wird geladen wenn CSV-URLs nicht konfiguriert)
- Team-Fotos: assets/sales/team/ — .webp oder .png, Namenskonvention: vorname-nachname.ext
- Sales-Decks: assets/sales/decks/
- Company Profiles: assets/sales/company-profiles/
- SALES_CONFIG im <script> am Ende von index.html konfigurieren

## Versioning
Patch-Versionen (1.7.x) für Bugfixes und kleine Features.
Minor-Versionen (1.x) für neue Sektionen oder größere Refactors.
CHANGELOG.md im Repo-Root führen.
