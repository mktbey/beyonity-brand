# Beyonity Brand Hub

Zentrale, passwortgeschützte und zweisprachige (DE/EN) Single-Source-of-Truth für die Marke Beyonity. Bündelt Markenidentität, Unternehmensinfos, Zielgruppen, Customer Journey, Produktwissen, visuelle Assets, Tone of Voice und Sales-Material an einem Ort.

- **Live:** https://mktbey.github.io/beyonity-brand/ *(passwortgeschützt, Zugang intern)*
- **Version:** 1.8.0 — Historie in [`CHANGELOG.md`](./CHANGELOG.md)
- **Technische Details:** [`DOCUMENTATION.md`](./DOCUMENTATION.md)

---

## Was ist das?

Eine **statische Single-Page-Anwendung** (eine `index.html` mit eingebettetem CSS/JS) ohne Build-Prozess. Inhalte werden direkt im HTML gepflegt, Assets liegen im Repo. Ein Teil der Inhalte (Sales-Hub) wird zur Laufzeit aus Google Sheets geladen. Versionierung, Deployment und Zusammenarbeit laufen über Git/GitHub Pages. Bearbeitet wird der Hub primär über **Claude Code**.

## Tech-Stack

HTML5 · CSS3 (CSS-Variablen, eingebettet) · Vanilla JavaScript (kein Framework) · Google Fonts (Sora) · Git · GitHub Pages · Google Sheets (CSV) als Datenquelle für den Sales-Hub.

## Repository-Struktur

```
beyonity-brand/
├── index.html              # Die gesamte Anwendung
├── favicon.png · apple-touch-icon.png
├── assets/
│   ├── products/           # Produkt-Icons (PNG)
│   ├── logo/               # Logo-Varianten (SVG)
│   ├── feature-logos/
│   ├── presentations/      # WebP-Thumbnails + full/ (Originale)
│   └── sales/              # decks/ · team/ · company-profiles/
├── sales-content/          # email-/linkedin-templates, sales-scripts (MD)
├── brandbook/ · docs/ · interviews/
├── sales-regions.json      # Offline-Fallback für den Sales-Hub
├── Brand.md · customer-journey.md
├── CHANGELOG.md · ROADMAP.md · CLAUDE.md
└── README.md · DOCUMENTATION.md
```

## Datenquellen

- **Statische Inhalte:** direkt in `index.html` gepflegt.
- **Sales-Hub:** lädt Team- und Asset-Daten aus dem Google Sheet *„Beyonity Sales Assets"* via CSV-Endpoints (Tabs `team`, gid `197513859`, und `Assets`, gid `2027870234`). Fällt bei Bedarf auf `sales-regions.json` zurück.

## Lokale Entwicklung

```bash
cd ~/Dev/beyonity-brand
claude                      # Claude Code starten und Aufgabe beschreiben
```

Zum reinen Ansehen genügt es, `index.html` im Browser zu öffnen. Für korrekt ladende Sheet-Daten ggf. einen kleinen lokalen Server nutzen (z. B. `python3 -m http.server`).

## Deployment

`git push` auf `main` → GitHub Pages veröffentlicht automatisch (~1 Min.). Es gibt keinen Build-Schritt; die `index.html` wird 1:1 ausgeliefert.

> **Wichtig:** Neue Bilddateien immer mit `git add` versionieren und vor dem Push per `git status` prüfen — fehlen referenzierte Assets im Repo, erscheinen live kaputte Bilder.

## Versionierung

Semantisch orientiert (`MAJOR.MINOR.PATCH`). Aktuelle Version steht im Sidebar-Footer. Jeder Release: Inhalt umsetzen → Version im Footer hochzählen → [`CHANGELOG.md`](./CHANGELOG.md) ergänzen → committen → pushen → live prüfen.

## Konventionen

- Neue Texte immer mit `data-de` **und** `data-en` versehen (Sprachumschaltung).
- Dateinamen: lowercase mit Bindestrichen.
- Präsentations-Visuals: WebP für die Anzeige in `assets/presentations/`, Original (PNG/JPG) gleichnamig in `assets/presentations/full/` für den Download.
- Pro veröffentlichtem Stand genau eine Versionsnummer.

---

Vollständige Architektur, Sektionsinhalte, Design-System und JS-Funktionen: siehe [`DOCUMENTATION.md`](./DOCUMENTATION.md).
