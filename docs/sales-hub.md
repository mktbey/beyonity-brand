# Sales Hub — Architektur & Pflege

> Sub-Sektion unter Tone of Voice im Brand Hub. Datenquelle: Google Sheet. Letzte Aktualisierung: Mai 2026 (v1.7.11).

## Struktur

### Globale Sales-Karten (7)
Sales Decks · Email Templates · LinkedIn Templates · Case Studies · One-Pager · Sales Skripte (Intern) · Pricing (Intern)

### Regionale Hubs (5)
Schweiz · DE/AT · Iberia · MENA · Africa

Jede Region zeigt:
- Sales Team (Person-Cards)
- Company Profile (PDF-Download)
- Decks (Chips)

## Datenquelle

**Google Sheet:** [Beyonity Sales Assets](https://docs.google.com/spreadsheets/d/16RM_7QTRXYB1iUpC83m_zDKbFGNBu8bMxzYESbfEJt4/edit)

### Tab `team`

| Spalte | Header | Wert |
|---|---|---|
| A | region | `ch` · `deat` · `iberia` · `mena` · `africa` |
| B | flag | Emoji (🇨🇭 etc.) |
| C | name | Vor- und Nachname |
| D | position_de | z.B. "Regional Director" |
| E | position_en | z.B. "Regional Director" |
| F | location | z.B. "Zürich" |
| G | booking_url | HubSpot/Calendly-Link |
| H | email | vorname.nachname@beyonity.com |
| I | linkedin | Profil-URL |
| J | photo | Dateiname (z.B. `fabian-hammer.webp`) |
| K | landing_page | Persönliche Navigator-LP |
| L | small_navigator | Small-Navigator mit Pricing |
| M | active | `TRUE` / `FALSE` (FALSE = ausgeblendet) |

### Tab `Assets`

| Spalte | Header | Wert |
|---|---|---|
| A | region | siehe oben |
| B | type | `deck` · `company_profile` · `one_pager` (`landing_page` & `case_study` deprecated seit v1.7.6) |
| C | label_de | Deutsche Bezeichnung |
| D | label_en | Englische Bezeichnung |
| E | url | Voller Pfad oder Drive-Link |
| F | lang | Sprach-Tag (z.B. `de-DE`, `es`) |
| G | notes | Internes Memo |
| H | active | `TRUE` / `FALSE` |

## Pflege-Workflow

1. **Sheet bearbeiten** (Tab `team` oder `Assets`)
2. Sheet ist via "Datei → Im Web veröffentlichen" als CSV automatisch aktualisiert
3. Brand Hub lädt CSV beim Page-Load — **Hard Refresh** (`Cmd+Shift+R`) zeigt Änderungen
4. Bei Bild-Änderungen: Datei nach `assets/sales/team/` legen, einmal committen + pushen

## Foto-Konvention

- Format: WEBP (mit Alpha-Channel)
- Größe: ≥ 1000×1000, quadratisch
- Design: lavendel Kreis als Background, Person freigestellt, gelbes "Book a Demo"-Badge oben rechts (siehe Beyonity-Website Pattern)
- Filename: `vorname-nachname.webp` (lowercase, ASCII, Bindestrich-getrennt)

## JSON-Fallback

`sales-regions.json` im Repo-Root. Wird nur geladen wenn Sheet-CSV nicht erreichbar. Sollte synchron gehalten werden für Konsistenz.

## URL-Card-Pattern

Drei Karten pro Verkäufer (jede nur sichtbar wenn Datenfeld gesetzt):

| Card | Icon | Datenfeld | Style |
|---|---|---|---|
| Book a Demo | `event` (Calendar) | `booking_url` | Domain-only Sub-Title |
| Navigator | `language` (Globe) | `landing_page` | Voller Pfad Sub-Title |
| Small Navigator mit Preisen | `local_offer` (Tag) | `small_navigator` | Voller Pfad Sub-Title |

## Versionsgeschichte
Siehe `CHANGELOG.md` ab v1.7.0.
