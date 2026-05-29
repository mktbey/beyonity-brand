# Beyonity Brand Hub — Technische Dokumentation

> Stand: 29. Mai 2026 · Version 1.8.0
> Live: https://mktbey.github.io/beyonity-brand/
> Repository: https://github.com/mktbey/beyonity-brand

---

## 1. Überblick

Der Beyonity Brand Hub ist eine passwortgeschützte, zweisprachige (DE/EN) Web-Anwendung, die als zentrale Single-Source-of-Truth für die Marke Beyonity dient. Sie bündelt Markenidentität, Unternehmensinformationen, Zielgruppen, Customer Journey, Produktwissen, visuelle Assets, Tone of Voice und Sales-Material an einem Ort — kuratiert und navigierbar.

Technisch ist der Hub eine **statische Single-Page-Anwendung**: eine einzige `index.html` mit eingebettetem CSS und JavaScript, ohne Backend, Datenbank oder Build-Prozess. Inhalte werden direkt im HTML gepflegt, Assets liegen als Dateien im Repository. Versionierung, Deployment und Zusammenarbeit laufen vollständig über Git/GitHub.

Diese Architektur ist bewusst schlank: kein Server zu warten, keine Abhängigkeiten, die brechen können, und volle Kontrolle über Inhalt und Design. Bearbeitet wird der Hub primär über **Claude Code** (agentisches Coding-Tool) direkt im lokalen Repository.

---

## 2. Tech-Stack

| Schicht | Technologie |
|---|---|
| Markup/Struktur | HTML5 (eine Datei: `index.html`) |
| Styling | CSS3, eingebettet im `<style>`-Block, mit CSS-Variablen |
| Interaktivität | Vanilla JavaScript (kein Framework, keine Libraries) |
| Schriften | Google Fonts (Sora); Marken-Font Bw Gradual als Vorgabe |
| Datenquelle (Sales-Hub) | Google Sheets via CSV-Endpoints, Fallback `sales-regions.json` |
| Versionierung | Git |
| Hosting | GitHub Pages |
| Entwicklung | Claude Code (CLI), lokal im Repo |

Bewusste Nicht-Entscheidungen: kein React/Vue, kein Bundler, kein npm-Build, kein CMS, kein Backend. Alles, was der Browser braucht, ist in der einen HTML-Datei plus den Asset-Ordnern enthalten.

---

## 3. Architektur

Das System folgt dem Prinzip „statische Seite + Assets im Repo":

```
Browser  ──lädt──>  index.html  ──referenziert──>  /assets/**
                         │
                         ├── <style>  (gesamtes CSS, CSS-Variablen)
                         ├── HTML      (alle Sektionen, per JS ein-/ausgeblendet)
                         └── <script>  (Navigation, Lightbox, Sprache, Passwort)
```

- **Eine Seite, viele Sektionen:** Alle Inhaltsbereiche (Identität, Unternehmen, …) liegen gemeinsam im HTML. Die Navigation blendet per JavaScript jeweils die aktive Sektion ein und die übrigen aus — es gibt keine Seitenwechsel und kein Routing im klassischen Sinn.
- **Überwiegend statische Inhalte:** Die meisten Inhalte sind fest im HTML gepflegt. Eine Ausnahme ist der **Sales-Hub**, der Team- und Asset-Daten zur Laufzeit aus Google Sheets (CSV) lädt — siehe Abschnitt „Datenquellen". Clientseitige Bausteine wie der Interview-JSON-Upload verarbeiten Eingaben rein im Browser und schreiben nichts zurück.
- **Assets als Dateien:** Bilder, Logos, Icons und Präsentations-Visuals liegen im Ordner `assets/` und werden per relativem Pfad referenziert.

### Datenquellen

| Inhalt | Quelle |
|---|---|
| Statische Sektionen (Identität, Unternehmen, Zielgruppen, …) | Direkt im HTML gepflegt |
| Sales-Hub (Teams, Assets pro Region) | Google Sheet „Beyonity Sales Assets" via CSV-Endpoints — Tab `team` (gid `197513859`), Tab `Assets` (gid `2027870234`) |
| Sales-Hub Offline-Fallback | `sales-regions.json` im Repo |

Der Sales-Hub ist damit der einzige Bereich mit Live-Datenanbindung. Ändert das Sales-Team Einträge im Google Sheet, spiegeln sie sich ohne Code-Änderung im Hub. Der JSON-Fallback sichert die Darstellung, falls das Sheet nicht erreichbar ist.

---

## 4. Repository-Struktur

```
beyonity-brand/
├── index.html                  # Die gesamte Anwendung
├── favicon.png
├── apple-touch-icon.png
│
├── assets/
│   ├── products/               # Produkt-Icons (PNG)
│   │   ├── Navigator.png
│   │   ├── Portfolio_Overview.png
│   │   ├── Living_Configuration.png
│   │   ├── Commercial_Configuration.png
│   │   └── Realtime_Tour.png
│   ├── logo/                    # Logo-Varianten (SVG)
│   │   ├── Beyonity_RGB_blue.svg
│   │   ├── Beyonity_RGB_white.svg
│   │   ├── Beyonity_CMYK_blue.svg
│   │   ├── Beyonity_CMYK_darkblue.svg
│   │   ├── Beyonity-LOGO-KEYVISUAL.svg
│   │   └── Beyonity-signet-blue.svg
│   ├── feature-logos/
│   │   └── features-logos.svg
│   ├── presentations/           # Präsentations-Visuals
│   │   ├── *.webp               # Optimierte Thumbnails für die Anzeige
│   │   └── full/                # Original-Dateien (PNG/JPG) für Download
│   │       └── *.png | *.jpg
│   └── sales/                   # Sales-Hub-Assets
│       ├── decks/               # Sales-Präsentationen pro Region
│       ├── team/                # Verkäuferbilder (.webp, 1000×1000)
│       └── company-profiles/    # Company Profile PDFs pro Region
│
├── brandbook/                   # Brandbook-Material
├── docs/                        # Weitere Dokumentation (z. B. tov-v1.6.md)
├── interviews/                  # Interview-Material
├── sales-content/               # Sales-Texte (Markdown)
│   ├── email-templates.md
│   ├── linkedin-templates.md
│   └── sales-scripts.md
│
├── sales-regions.json           # Offline-Fallback für den Sales-Hub
├── Brand.md
├── CHANGELOG.md                 # Versionshistorie
├── CLAUDE.md                    # Anweisungen/Kontext für Claude Code
├── customer-journey.md
└── ROADMAP.md
```

### Asset-Konvention (Präsentations-Visuals)

Für die Präsentations-Visuals gilt ein Zwei-Versionen-Prinzip:

- **Anzeige:** kleine, optimierte `.webp`-Dateien direkt in `assets/presentations/` (schnelle Ladezeit)
- **Download:** die hochauflösenden Originale (`.png`/`.jpg`) in `assets/presentations/full/` (beste Qualität für die Weiterverwendung)

Pro Visual existiert ein WebP-Thumbnail und eine gleichnamige Originaldatei in `full/`. Dateinamen sind durchgängig lowercase mit Bindestrichen (z. B. `ecosystem-of-experience.webp` / `full/ecosystem-of-experience.png`).

---

## 5. Hosting & Deployment

- **Hosting:** GitHub Pages, ausgeliefert direkt aus dem `main`-Branch.
- **Live-URL:** https://mktbey.github.io/beyonity-brand/
- **Deployment-Ablauf:** `git push` auf `main` → GitHub Pages baut und veröffentlicht automatisch → die Änderung ist nach rund einer Minute live.
- **Kein Build-Schritt:** Da es keine Kompilierung gibt, wird die `index.html` 1:1 ausgeliefert.

**Wichtig für Assets:** Neue Bilddateien müssen explizit mit `git add` versioniert und gepusht werden. Wird nur `index.html` committet, aber die referenzierten Bilder fehlen im Repo, erscheinen auf der Live-Seite kaputte Bilder (broken images). Vor dem Push lohnt daher ein `git status`, um sicherzugehen, dass alle referenzierten Dateien enthalten sind.

---

## 6. Versionierung

- **Schema:** Semantisch orientiert (`MAJOR.MINOR.PATCH`). Neue Funktionsbereiche erhöhen die MINOR-Stelle, kleinere Korrekturen die PATCH-Stelle.
- **Anzeige:** Die aktuelle Version steht im Footer der Sidebar (z. B. `v1.8.0 · Mai 2026`).
- **Historie:** Geführt in `CHANGELOG.md` im Format `## [x.y.z] — YYYY-MM-DD` mit Unterabschnitten wie `### Added` / `### Removed`.

### Versionshistorie (Auszug)

| Version | Datum | Inhalt |
|---|---|---|
| 1.8.0 | 2026-05-29 | Neue Visuelles-Asset-Section: Produkt-Icons, Logos, „Elemente für Präsentationen" mit 6-Spalten-Grid, Lightbox, Downloads, Figma-Button |
| 1.7.12 | 2026-05-18 | Sales-Hub: ungenutzte Cards entfernt, regionaler Untertitel bereinigt |
| 1.7.7–1.7.11 | 2026-05-18 | Sales-Hub-Ausbau: Book-a-Demo, Navigator-/Small-Navigator-Cards, Avatar-Tuning, LinkedIn-SVG |
| 1.7.0 | 2026-05-18 | **Sales-Hub** eingeführt (5 Regionen, Google-Sheets-Anbindung, Person-Cards, Favicon) |
| 1.6 | vorher | Tone-of-Voice-Section, Brand Lexicon, Golden Samples |
| 1.0–1.5 | vorher | Customer Journey, Produkte-Overhaul, Quellen-Tool, weitere Regionen |

Die vollständige, fortlaufend gepflegte Historie steht in `CHANGELOG.md` (Format orientiert an „Keep a Changelog"); dort findet sich auch ein **Backlog** geplanter Erweiterungen.

**Empfehlung zur Pflege:** Jeder veröffentlichte Stand sollte genau eine Versionsnummer tragen. Mehrere aufeinanderfolgende Deploys unter derselben Nummer sollten vermieden werden, da sich sonst Live-Stände nicht mehr eindeutig der Version zuordnen lassen. Bei jedem Release: (1) Inhalt umsetzen, (2) Version im Sidebar-Footer hochzählen, (3) CHANGELOG-Eintrag ergänzen, (4) committen und pushen.

---

## 7. Zugriff & Sicherheit

- **Passwortschutz:** Beim Aufruf erscheint eine Passwortabfrage („Bitte Passwort eingeben, um fortzufahren"). Das Passwort wird clientseitig geprüft.
- **Schutzniveau:** Da die Prüfung im Browser stattfindet und der gesamte Inhalt in der ausgelieferten HTML steckt, handelt es sich um einen **leichten Zugangsschutz** (Abschreckung / „nicht öffentlich auffindbar"), nicht um echte serverseitige Sicherheit. Für vertrauliche Inhalte wäre eine serverseitige Authentifizierung nötig.

---

## 8. Internationalisierung (DE/EN)

- Umschaltung über den Sprachschalter im Kopfbereich (`DE | EN`).
- Übersetzbare Texte tragen die Attribute `data-de` und `data-en`; ein JavaScript-Schalter tauscht den sichtbaren Text entsprechend der gewählten Sprache.
- Neue Inhalte sollten konsequent beide Attribute erhalten, damit die Umschaltung lückenlos funktioniert.

---

## 9. Navigation / Menüstruktur

Die Sidebar enthält die folgenden Einträge (Symbol · Bezeichnung). Eingerückte Punkte sind Unterpunkte des darüberliegenden Bereichs.

| Symbol | Menüpunkt | Beschreibung |
|---|---|---|
| ◆ | Identität | Mission, Vision, Werte, Positionierung |
| ▣ | Unternehmen | Team, Kennzahlen, Regionen, rechtliche Einheiten |
| ◉ | Zielgruppen | Kundensegmente und ihre Bedürfnisse |
| ↱ | Customer Journey | Erleben der Segmente entlang aller Phasen |
| ↳ | — Quellen | Interview-/Datenquellen zur Journey |
| ❝ | Kundenstimmen | Testimonials / Golden Samples |
| ▤ | Produkte | Produktübersicht mit Varianten und Add-Ons |
| ◐ | Visuelles | Farben, Typografie, Logos, Key Visuals, Präsentations-Assets |
| ✦ | Tone of Voice | Sprachstil und Formulierungen |
| ↳ | — Sales Assets | Sales-Material (Templates, Skripte) |
| ⌘ | LLM / AI | KI-bezogene Inhalte/Prompts |

Im Sidebar-Footer steht die Versionsangabe.

---

## 10. Sektionen im Detail

### Identität
Vision, Mission und „Unser Versprechen" (an Kunden / an das Team). Die **6 Werte**: Neugierig, Partnerschaftlich, Durchdacht, Verbindlich, Unangepasst, Leidenschaftlich. Dazu eine **Company-Development-Timeline** (2019–2024) und die Positionierung („Ecosystem of Experience").

### Unternehmen
Kennzahlen-Tabelle (Gründung, CEO, Hauptsitz, Branche, Mitarbeitende, Regionen, Auszeichnungen), Übersicht zu **Führung & Board** sowie die **rechtlichen Einheiten** in fünf Ländern (Schweiz, Deutschland, Spanien, Saudi-Arabien, USA).

### Zielgruppen
Vier Segmente, jeweils mit primären Zielen, Needs, Hauptrisiken und passender Beyonity-Lösung:
- **Segment A** — Bauträger / Projektentwickler (meist Verkauf)
- **Segment B** — Institutionelle Eigentümer (meist Miete)
- **Segment C** — Vermarkter (Miete/Verkauf)
- **Segment D** — Kiban / kleine Kunden & Baugruppen (inkl. Pakete Mini/Small/Medium)

Ergänzt um Kundenlisten (Institutionelle, Entwickler, Vermarkter).

### Customer Journey
Interaktiver Bereich mit:
- **Interview-Quellen:** Upload von `interview-[region].json`, Zusammenfassung pro Region, Generierung eines Claude-Code-Prompts zur Aktualisierung von `customer-journey.md`.
- **NotebookLM CI/Brand Import:** Prompt-Vorlage für die Analyse von Interviews/Kundenstimmen und Überführung der Erkenntnisse in den Hub.
- **Phasen-×-Segment-Matrix** (Awareness, Development, Pricing, Sales, Portfolio gegen Segment A–D).
- **Moments of Truth**, **Produkteinsatz-Matrix** und **strategische Empfehlungen**.

### Kundenstimmen
Testimonials / Golden Samples nach Region und Segment.

### Produkte
Produktübersicht mit Tabs: **Navigator, Portfolio, Configurator, Realtime-Tour, Interiors & Exteriors, Marketing**. Je Produkt: Beschreibung, Hauptprodukte/Varianten, Add-Ons, Abos sowie aufklappbare Details zu Features, Benefits und Projektphasen.

### Visuelles
- **Visual Brand:** Farbsystem, Typografie, Logo-System, Formen & Regeln (Do/Don't).
- **Key Visuals:** kuratierte Bildwelten (Beyonity Hero, Key Visual mit Logo u. a.).
- **Produkt-Icons & Logos:** 5 Produkt-Icons (PNG) und 6 Logo-Varianten (SVG), je mit Download.
- **Elemente für Präsentationen:** 11 Präsentations-Visuals als 6-Spalten-Grid mit Klick-Lightbox, Einzel-Download des Originals und einem Button „Alle Assets in Figma öffnen".

### Tone of Voice / Sales-Hub
**Tone of Voice:** Sprachstil und Formulierungen — „So klingt Beyonity / So nicht"-Liste, DE/EN-Code-Switching, Channel-Tonalitäten, Brand Lexicon, Golden Samples und Signature Phrases, Avoid-Tabelle sowie Coaching-Karten („Gesprächsrahmen — drei Phasen", „Vier Welten — eine Plattform").

**Sales-Hub** (Sub-Sektion): das verkaufsbezogene Material, datengetrieben über Google Sheets. Enthält:
- **5 Regionen** (CH, DE/AT, Iberia, MENA, Africa) als dauerhaft ausgeklappte Cards.
- **Sales-Person-Cards** je Region mit Foto, Position, Location und Karten für Book-a-Demo (Booking-URL), Navigator-Landingpage, Small-Navigator-mit-Preisen, E-Mail und LinkedIn.
- **Globale Sales-Karten:** Sales Decks, Email Templates, LinkedIn Templates, Sales Skripte, Pricing u. a.
- **Datenpflege** über das Google Sheet „Beyonity Sales Assets" (Tabs `team`/`Assets`), Offline-Fallback `sales-regions.json`. Texte liegen zusätzlich unter `sales-content/`, Assets unter `assets/sales/`.

### LLM / AI
KI-bezogene Inhalte und Prompts für den Markenkontext.

---

## 11. Features

| Feature | Beschreibung |
|---|---|
| Passwort-Gate | Clientseitige Zugangsabfrage beim Aufruf |
| DE/EN-Umschaltung | Sprachwechsel über `data-de`/`data-en`-Attribute |
| Sektions-Navigation | Ein-/Ausblenden der Bereiche per JavaScript (kein Reload) |
| Karten-Grids | Wiederverwendbare Grid-/Card-Komponenten (3- und 6-spaltig) |
| Lightbox | Klick auf Präsentations-Thumbnails öffnet das Original groß (mit Titel, ESC/X/Hintergrund schließt) |
| Downloads | `download`-Attribut an Asset-Links für direkten Datei-Download |
| Figma-Integration | Button verlinkt die Quell-Assets in Figma (neuer Tab) |
| Interview-Upload | Clientseitiger JSON-Upload mit Prompt-Generierung |
| NotebookLM-Workflow | Vorlagen zur Überführung von Erkenntnissen in den Hub |
| Sales-Hub mit Sheets-Anbindung | Lädt Team-/Asset-Daten live aus Google Sheets (CSV), Fallback `sales-regions.json` |
| Responsive Design | Grid-Umbrüche an Breakpoints (siehe Design-System) |

---

## 12. Design-System

### Farben

| Rolle | Hex | Verwendung |
|---|---|---|
| Primary Blue | `#3c57e1` | Akzente, Links, Buttons |
| Dark Blue | `#001a64` | Dunkler Hintergrund, primärer Text |
| Yellow | (Brand-Gelb) | CTAs, Badges, Highlights |
| Light Blue | (hell) | Heller Hintergrund, Segment A |
| White | `#ffffff` | Cards, Hintergrund |
| Gray | (neutral) | Seitenhintergrund, Trennlinien |
| Error Red | (rot) | Fehler, „Don't"-Markierungen |
| Success Green | (grün) | Erfolg, „Do"-Markierungen, Segment C |

> Hinweis: Die exakten Hex-Werte für Gelb, Hell-Blau, Grau, Rot und Grün stehen im Visual-Brand-Bereich der Live-Seite; oben sind die belegten Werte eingetragen.

### Typografie

- **Sora** (Google Fonts) — 800 ExtraBold für Headlines/CTAs, 600 SemiBold für Subheads/Labels, 400 Regular für Fließtext.
- **Bw Gradual** (Marken-Font) — ExtraBold für Headlines, Medium für Body Copy; Fallback ist Sora.
- **Zeilenhöhe:** 120 % bei Headlines, 140 % im Fließtext.

### Formen & Regeln

- Erlaubt: Kreise und abgerundete Rechtecke; konsistenter Border-Radius innerhalb eines Mediums; Schatten nur auf Hover bzw. auf klickbaren Elementen (`box-shadow: 0 0 6px rgba(0,0,0,.5)` bei Hover).
- Nicht erlaubt: scharfe Ecken (border-radius 0); Schatten auf statischen, nicht-klickbaren Elementen; unterschiedliche Radien im selben Medium.

---

## 13. CSS-Architektur

- Gesamtes CSS liegt eingebettet im `<style>`-Block der `index.html`.
- **CSS-Variablen** für zentrale Werte (u. a. `--blue`, `--dark`), wodurch Farben konsistent referenziert werden.
- **Komponenten-Namensschema** mit kurzen Präfixen, u. a.:
  - `kv-*` — Key-Visuals/Lightbox (`kv-grid`, `kv-lb`, `kv-lb-img`, `kv-lb-title`, `kv-vid-*`, `kv-note`)
  - `pi-*` — Produkt-Icons/Assets (`pi-grid`, `pi-grid--6`, `pi-card`, `pi-img-wrap`, `pi-thumb-wrap`, `pi-dl`, `pi-foot`, `pi-h3`, `pi-figma-btn`)
  - `nav-*` — Navigation (`nav-btn`, `nav-sub-btn`)
  - `sb-foot` — Sidebar-Footer (Version)
- **Responsive Breakpoints (Präsentations-Grid):** 6 Spalten Standard → 4 Spalten ab ≤ 1100 px → 2 Spalten ab ≤ 700 px. Das 3-spaltige Standard-Grid (`pi-grid`) wird auf ≤ 700 px einspaltig.

---

## 14. JavaScript-Funktionen

Zentrale Funktionen (Vanilla JS, im `<script>`-Block):

| Funktion | Zweck |
|---|---|
| `show(section, btn)` | Hauptsektion einblenden, übrige ausblenden, aktiven Nav-Button markieren |
| `showSub(parent, sub, btn)` | Unterpunkt eines Bereichs anzeigen |
| `kvOpen(img)` | Key-Visual-Lightbox öffnen (Bildquelle übernehmen) |
| `presOpen(fullSrc, title)` | Präsentations-Lightbox öffnen; lädt das Original aus `full/` und zeigt den Titel |
| `kvClose()` | Lightbox schließen, Scroll wieder freigeben |
| `kvVidToggle(wrap)` | Video-Element in Key Visuals umschalten |
| Sprach-Schalter | Tauscht sichtbaren Text anhand `data-de`/`data-en` |
| Passwort-Prüfung | Clientseitige Validierung der Zugangsabfrage |

Globale Tastatur-/Klick-Bindings: `Escape` schließt die Lightbox; Klick auf den Lightbox-Hintergrund schließt ebenfalls. Download-Links innerhalb klickbarer Karten verwenden `event.stopPropagation()`, damit der Download die Lightbox nicht mitöffnet.

---

## 15. Asset-Management-Workflow (Präsentations-Visuals)

Der etablierte Ablauf, um neue Präsentations-Visuals aufzunehmen:

1. **Originale beschaffen** (z. B. aus der Quell-Präsentation / Google Drive) und lokal sammeln.
2. **Optimieren & benennen:** PNGs via `pngquant`, JPGs via `jpegoptim`; sprechende, lowercase-Dateinamen mit Bindestrichen.
3. **Zwei Versionen ablegen:**
   - WebP-Thumbnail in `assets/presentations/` (für die Anzeige) — erzeugt via `cwebp`.
   - Original (PNG/JPG) in `assets/presentations/full/` (für den Download), gleichnamig zum WebP.
4. **Im HTML einbinden:** Karte mit `pi-thumb-wrap` (WebP als `src`), Download-Link auf die Datei in `full/` mit `download`-Attribut, `onclick="presOpen(...)"` für die Lightbox.
5. **Versionieren:** `git add assets/presentations/` (inkl. `full/`), `git status` zur Kontrolle, dann committen und pushen.

Zur Optimierung existiert ein Hilfsskript (`import-visuals.sh`), das Bilder interaktiv umbenennt, optimiert und in den Zielordner kopiert.

---

## 16. Entwicklungs-Workflow

1. Lokales Repo: `cd ~/Dev/beyonity-brand`
2. Claude Code starten: `claude`
3. Aufgabe beschreiben; Claude Code nimmt die Änderungen an `index.html`/Assets vor.
4. Lokal prüfen, dann committen und pushen.
5. GitHub Pages veröffentlicht automatisch (~1 Minute).

Begleitende Dateien:
- **`CLAUDE.md`** — Kontext und Anweisungen für Claude Code (Konventionen, Vorgehen).
- **`CHANGELOG.md`** — Versionshistorie; bei jedem Release zu pflegen.
- **`ROADMAP.md`** — geplante Erweiterungen.

**Release-Checkliste:** Inhalt umsetzen → Version im Sidebar-Footer hochzählen → CHANGELOG-Eintrag ergänzen → `git status` prüfen (alle Assets dabei?) → committen → pushen → live verifizieren.

---

## 17. Wartung & offene Punkte

- **Asset-Vollständigkeit:** Vor jedem Push sicherstellen, dass referenzierte Bilder mitversioniert sind (sonst broken images live).
- **DE/EN-Parität:** Neue Texte immer mit `data-de` und `data-en` versehen.
- **Versionsdisziplin:** Pro veröffentlichtem Stand genau eine Versionsnummer; CHANGELOG synchron halten.
- **Bildgrößen:** Große, fotorealistische Visuals als WebP für die Anzeige halten; Originale nur am Download-Link. So bleibt die Seite schnell.
- **Passwortschutz:** Bei Bedarf an vertraulichem Schutz auf eine serverseitige Lösung wechseln — die aktuelle Abfrage ist nur ein leichter Zugangsschutz.

---

## Anhang — Verifikation gegen den Code

Diese Dokumentation basiert auf der Live-Seite, den sichtbaren Code-Ausschnitten und der Repo-Struktur. Für eine 1:1-Verifikation gegen den aktuellen Quellcode (exakte Hex-Werte, vollständige Liste der JS-Funktionen und CSS-Variablen) eignet sich folgender Claude-Code-Auftrag:

```
Lies index.html vollständig und gleiche sie mit DOCUMENTATION.md ab.
Ergänze/korrigiere: alle exakten Farb-Hex-Werte aus dem Visual-Brand-Bereich,
die vollständige Liste der CSS-Variablen, alle JS-Funktionen mit kurzer
Beschreibung, sowie alle Sektions-IDs. Markiere Abweichungen, ändere aber
keine Funktionalität.
```
