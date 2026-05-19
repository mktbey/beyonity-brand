# Roadmap

## 📅 Dienstag, 19. Mai 2026

Vier Hauptblöcke, in empfohlener Reihenfolge:

1. 🎙️ Podcast-Transkripte → ToV-Erweiterung
2. 🛤️ Customer Journey Review
3. 💼 Sales-Material Backlog abarbeiten
4. 🧠 beyonity-ops Project finalisieren

---

## 1. 🎙️ Podcast-Transkripte → Tone of Voice (~2h, vormittags)

**Ziel:** Neue Golden Samples + Signature Phrases aus dem Podcast-Material in den Brand Hub integrieren (v1.7.12+).

### Vorbereitung
- Audio-Files transkribieren — drei Optionen:
  - **MacWhisper** (~30 €, gemütlichste UX)
  - **whisper-cpp** im Terminal (kostenlos, lokal)
  - **NotebookLM** (Auto-Transkript beim Upload)
- Transkripte zentral in Google Drive ablegen: `Beyonity Podcast Transcripts/`

### Vorgehen
- Transkripte in Claude-Chat reinwerfen
- Prompt-Template: *"Extrahier 5-7 neue Golden Samples + Signature Phrases für die ToV-Section, Fokus auf [Discovery-Call / Anti-Widerstand / Pitch-Hooks / etc.]"*
- Output: v1.7.x Code-Prompts wie heute

### Output
- `index.html` ToV-Erweiterungen
- Updates in `CHANGELOG.md`
- Ggf. neue Coaching-Karten (analog zu "Gesprächsrahmen" + "Vier Welten")

---

## 2. 🛤️ Customer Journey Review (~45min)

**Ziel:** Sektion "Customer Journey" auf Vollständigkeit + Aktualität prüfen.

### Vorgehen
- Im Brand Hub die Sektion durchgehen (alle 4 Segmente A/B/C/D)
- Pro Segment Checkliste:
  - [ ] Awareness-Phase vollständig?
  - [ ] Consideration / Decision / Post-Sales-Phasen?
  - [ ] Moments of Truth dokumentiert?
  - [ ] Insights aus Sales-Interviews integriert?
- `customer-journey.md` im Repo gegen-prüfen

### Output
- Wenn Updates nötig: Code-Prompts mit Ergänzungen
- Bei größeren Änderungen: Version-Bump auf v1.8

---

## 3. 💼 Sales-Material Backlog (~2-3h)

Siehe `CHANGELOG.md` → `[Backlog]` → Sales Hub. Prioritäten:

### A) Drive-Setup
- Drive-Folder anlegen: `Beyonity Sales Internal/Sales Leitfäden/`
- Präsentationsleitfaden v4 hochladen
- Sales-Skripte-Karte im Brand Hub mit Drive-URL verdrahten (siehe Prompt im CHANGELOG-Backlog)

### B) Pricing
- Drive-Folder für Pricing-Sheets anlegen
- Pricing-Karte im Brand Hub mit Drive-URL verdrahten

### C) Sheet `team` befüllen
- Position (DE/EN) für alle 7
- Location pro Person
- Email (Pattern: `vorname.nachname@beyonity.com`)
- Booking-URLs für Fabian, David, Heike, Osama, Laura (Miguel hat schon via Xavier)

### D) Verkäufer-Landing-Pages ergänzen
- David Huber · Alejandro Tomás · Osama Soady · Laura Salzmann (Spalte K)

### E) Small-Navigator-URLs
- Alle 7 Verkäufer (Spalte L)

### F) Company Profiles
- Pro Region als PDF in `assets/sales/company-profiles/`
- Im Sheet Tab `Assets` als `type=company_profile` referenzieren

---

## 4. 🧠 beyonity-ops Project finalisieren (~1-2h, nachmittags)

**Ziel:** Anthropic Project "beyonity-ops" wird operativer Content-Production-Hub.

### Vorgehen
- **Project-Knowledge füllen:**
  - `Brand.md`
  - `CLAUDE.md`
  - `docs/sales-hub.md`
  - `docs/tov-v1.6.md`
  - `customer-journey.md`
  - Podcast-Transkripte (aus Schritt 1)
  - Beyonity Sales Presentation 2026 (DE + EN)
  - Präsentationsleitfaden v4
- **System Prompt** für Content-Production verfeinern
  - Tone of Voice referenzieren
  - Channel-Spezifika (LinkedIn vs Newsletter vs Sales-Mail)
  - Signature-Phrases aus dem Brand Lexicon
- **Test-Run:** Einen Content-Drop generieren lassen (z.B. LinkedIn-Post zu Navigator 5.0)

### Output
- Project vollständig konfiguriert
- Erstes produziertes Content-Sample als Validierung

---

## 🎁 Optional (wenn Zeit)

- [ ] TODO-Werte in Sheet entfernen → bei leerer Position/Location ausblenden statt Platzhalter
- [ ] DE/EN-Toggle Test: ist der Sales-Hub komplett zweisprachig?
- [ ] Avatar-Größe nochmal feintunen (120px finalisiert? oder doch zu groß?)

---

## 📊 Aktueller Stand zum Tagesabschluss 18.05.2026

- Brand Hub: **v1.7.11**
- Sektionen vollständig: Identität, Unternehmen, Zielgruppen, Produkte, Visuelles, Tone of Voice
- Sales-Hub: Architektur + UI fertig, Sheet teilweise befüllt (Heike + Miguel + Fabian Landing Pages aktiv)
- Doku: CHANGELOG.md, CLAUDE.md (aktualisiert), docs/sales-hub.md (neu)
- 7 Verkäuferbilder live (Foto-Design mit eingebettetem Book-a-Demo-Badge)
