# Changelog

Alle nennenswerten Änderungen am Beyonity Brand Hub.  
Format orientiert an [Keep a Changelog](https://keepachangelog.com).

## [Backlog]

### Sales Hub
- Drive-Folder "Beyonity Sales Internal/Sales Leitfäden/" anlegen, Präsentationsleitfaden v4 hochladen, Link in Sales-Skripte-Karte verdrahten
- Pricing: Drive-Folder-Link in Pricing-Karte ergänzen
- Sheet `team` befüllen: Position/Location/Email/Booking-URLs für CH, DE/AT, MENA, Africa
- Verkäufer-Landing-Pages ergänzen: David, Alejandro, Osama, Laura
- Small-Navigator-URLs pro Verkäufer im Sheet eintragen
- Company Profile PDFs pro Region (`assets/sales/company-profiles/`)

### Tone of Voice
- Podcast-Transkripte verarbeiten → Golden Samples / Signature Phrases erweitern (separater Build-Tag)

---

## [1.7.13] — 2026-05-29

### Added
- Visuelles: Neue Sub-Section "Produkt-Icons, Logos & Präsentationen" unterhalb Key Visuals
- Produkt-Icons Grid: 5 PNG-Icons (Navigator, Portfolio Overview, Living Configurator, Commercial Configurator, Realtime Tour) mit ↓-Download
- Logos Grid: 6 SVG-Varianten (RGB Blue/White, CMYK Blue/Darkblue, Logo+Keyvisual, Signet Blue) mit ↓-Download; RGB White auf dunklem Hintergrund
- Präsentationen Grid: 11 Slides als WebP-Thumbnail (object-fit:cover, 16:9) mit ↓-Download der Originaldatei (PNG/JPG aus assets/presentations/full/)
- Titel aus Dateinamen (Title Case), drei Ausnahmen: "4 Regionen", "Data + 3D: More Value", "Projektgeschäft vs. SaaS"

## [1.7.11] — 2026-05-18

### Added
- Sales-Hub: Dritte URL-Card "Small Navigator mit Preisen" pro Verkäufer (Tag-Icon)
- Neues Datenfeld `small_navigator` (Sheet Spalte L, JSON Property)

## [1.7.10] — 2026-05-18

### Changed
- Sales-Hub: Avatar-Größe 72px → 120px für Hero-Portrait-Präsenz
- Initialen-Font proportional 18px → 26px

## [1.7.9] — 2026-05-18

### Fixed
- Sales-Hub: Avatar-Container für Foto-Karten transparent + overflow:visible (Foto-Designs mit eingebettetem lavendel-Kreis + Book-a-Demo-Badge rendern frei)
- Bild füllt jetzt vollen Avatar-Bereich (kein 10px Inset mehr)

## [1.7.8] — 2026-05-18

### Fixed
- Sales-Hub: Lavendel Avatar-Background bei Foto-Karten (war versehentlich dunkelblau aus v1.7.5)

## [1.7.7] — 2026-05-18

### Added
- Sales-Hub: "Book a Demo"-Card pro Verkäufer (Calendar-Icon, booking_url)
- Sales-Hub: Navigator-Card pro Verkäufer (Globe-Icon, landing_page) — umbenannt aus "Persönliche Landing Page"

### Removed
- Sales-Hub: Termin-Button aus Actions-Row (redundant mit Book-a-Demo-Card)

## [1.7.6] — 2026-05-18

### Added
- Sales-Hub: Landing-Page-Card pro Verkäufer integriert in Person-Card
- Neues Datenfeld `landing_page` (Sheet Spalte K, JSON Property)

### Changed
- Sales-Hub: "Decks & Case Studies" → nur "Decks" (Case Studies aus Region-Render entfernt)
- Sales-Hub: Landing-Pages-Sektion auf Region-Ebene entfernt (gehört jetzt zur Person)
- Sales-Hub: Buttons margin-top 10px → 14px

### Fixed
- Sales-Hub: Avatar-Image Größe deterministisch via calc() (war unsichtbar mit inset:10px;width:auto)
- Sales-Hub: alejandro-tomas Filename-Extension korrigiert

## [1.7.5] — 2026-05-18

### Changed
- Sales-Hub Person-Card: Avatar 56px → 72px (+29%)
- Sales-Hub Person-Card: gap 14px → 18px, padding 14px → 16px
- Avatar-Image: 10px Inset für Foto, separater border-radius
- Actions: margin-top 10px für Buttons-Atemraum

### Fixed
- Sales-Hub: Initialen bei vorhandenem Foto unsichtbar (color:transparent)

## [1.7.4] — 2026-05-18

### Fixed
- Sales-Hub: Generisches "link" Material-Icon ersetzt durch echtes LinkedIn-Brand-SVG-Logo

## [1.7.3] — 2026-05-18

### Added
- Tone of Voice: "Gesprächsrahmen — drei Phasen" Coaching-Karte (Erst zuhören → Lücke benennen → Verbesserung andocken)
- Tone of Voice: "Vier Welten — eine Plattform" Karte (Käufer · Vertrieb · Marketing · Entwicklung)
- Quelle: Beyonity Präsentationsleitfaden v4 (intern)

## [1.7.2] — 2026-05-18

### Added
- Tone of Voice: 5 neue Golden Samples für Sales-Pitch-Tonalität (Hook, Bridge, Pain-Frage, Einwand-Handling, Demo-Einladung)
- Brand Lexicon: 2 neue Signature-Phrases ("Wir ersetzen nichts. Wir unterfüttern...", "Erst zuhören. Lücke benennen. Verbesserung andocken.")
- Avoid-Tabelle: "Wir ersetzen / wir lösen ab" → "Wir unterfüttern · wir erweitern · wir dazugeben"

## [1.7.1] — 2026-05-18

### Changed
- Sales-Hub: UX vereinfacht — alle Regionen dauerhaft expanded, keine Filter-Pills
- Datenanbindung: Google Sheet CSV-Endpoints mit korrekten gids verdrahtet (team 197513859, assets 2027870234)

## [1.7.0] — 2026-05-18

### Added
- **Sales-Hub** als neue Sub-Sektion unter Tone of Voice
- 5 Regionen (CH, DE/AT, Iberia, MENA, Africa) mit Sales-Teams als immer-expanded Cards
- Datenpflege via Google Sheet "Beyonity Sales Assets" (Tabs `team` + `Assets`)
- 7 globale Sales-Karten: Sales Decks, Email Templates, LinkedIn Templates, Case Studies, One-Pager, Sales Skripte, Pricing
- JSON-Fallback `sales-regions.json` für Offline-Render
- Sales-Person-Card mit Foto-Slot, Position, Location, Termin/Email/LinkedIn

### Added (Daten)
- Beyonity Sales Presentation 2026 (CH/DE, DE/DE, USA/EN) in `assets/sales/decks/`
- 7 Verkäuferbilder in `assets/sales/team/` (.webp, 1000×1000, transparente Ecken)
- Favicon (B-Logo, 192×192 PNG) + Apple Touch Icon (180×180)

## [1.6] — vorher

### Added
- Tone of Voice Section mit "So klingt Beyonity / So nicht"-Liste, DE/EN-Code-Switching, Channel-Tonalitäten, Brand Lexicon, 5 Golden Samples
- Vollständige ToV-Analyse als `docs/tov-v1.6.md` Download

## [1.5] — vorher

### Added
- Customer Journey: Awareness-Phase mit echten Sales-Interview-Insights (CH, Iberia, MENA)

## [1.4] — vorher

### Added
- Customer Journey: Awareness-Phase (Defaults) für alle 4 Segmente

## [1.3] — vorher

### Added
- Products Section: Komplettes Overhaul nach Product Overview V1.2 (6 Kategorien, alle Varianten/AddOns)
- 3D Icon Headers pro Tab

## [1.2] — vorher

### Added
- Customer Journey: Interaktive Timeline, 3 Segmente, Moments of Truth
- Segment D (Kiban) ergänzt

## [1.1] — vorher

### Added
- Quellen-Sektion mit NotebookLM-Import-Tool und Prompt-Generator
- Sales Interview Tool (regional)
- Afrika-Region (Laura, Nairobi)
- Iberia-Region (Miguel)
