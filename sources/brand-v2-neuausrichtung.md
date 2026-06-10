<!--
============================================================
NEUE VERSION — Brand-Wording / Positionierung (v2.2 · Neuausrichtung + Product Direction)
Quellen: Gesamtdeck "BEY New World" (71 Folien) + Direction-Docs
         "Navigator direction" und "BeyonityHELLO direction" (Juni 2026)
Stand: Juni 2026 · Status: ENTWURF (enthält TODO(human))

ERSETZT: Brand_neue-Version_Neuausrichtung_v2-1.md (v2.2 = Superset, NICHTS gelöscht —
Produkte vertieft, neue Abschnitte ergänzt).
ERSETZT ebenso die Sales-Deck-Version (nur deren Preisliste lebt in §13 weiter).

EINFÜGEN: kompletter Block GANZ OBEN in Brand.md (prepend). Basis-Inhalt bleibt 1:1.

VERTRAULICHKEIT: Abschnitte mit "INTERN — nicht live" sind interne Strategie/Finanzen.
→ In Brand.md (Quelle) ok, aber NICHT auf die öffentliche Hub-Seite pushen.

SPRACHE: Quellen englisch. EN = maßgeblich; DE für den Hub maschinell + rotes Sternchen.
============================================================
-->

# Brand-Wording v2.2 — Neuausrichtung + Product Direction (Stand: Juni 2026)

> Vollständige Positionierung + vertiefte Produkte. Frühere Brand.md-Versionen folgen unverändert darunter.

## 0 · Reconciliation — Änderungen ggü. v2.1

- **Additiv, nichts gelöscht.** v2.1-Inhalt vollständig erhalten; §3 (Navigator) und §4 (HELLO OS) deutlich vertieft; neue §§ 15 (Risiken) + Erweiterungen in §10/§11.
- **RESOLVED — Vendor "Parashit" → „Parashift"** (Dokumenten-Extraktion). Früheres TODO erledigt.
- **NEU: Navigator-Tier-Bifurkation** — Premium (Tier A) vs **Lite (Tier B)**. Verhältnis zur bisherigen „New-build vs Portfolio"-Achse siehe §3 (TODO: Namensführung vereinheitlichen).
- **NEU: HELLO-OS-Mechaniken vertieft** — „1/3-Pricing-Regel", CRM-3-Phasen-Funnel, Applicant-Matching-Hierarchie, Loss-/Conversion-KPIs (inkl. neuem „Location"-Signal), Global Search Profile mit Consent-Flow.
- **DISKREPANZ NEU: Leerstandsziel** — Direction-Doc sagt **<1 Monat**, Deck sagt **<3 Wochen**. TODO(human): festlegen.
- **DISKREPANZ NEU: Portfolio-Recurring** — „CHF 1.–/Objekt/Monat" (Deck) vs „CHF 1–2 pro Objekt" (Navigator-Direction) vs „CHF 5'500 Einmallizenz" (Sales). TODO(human): Modell vereinheitlichen.
- **„−71.5 %" weiterhin ungeklärt.** TODO(human).

## 1 · Master-Narrativ / Positionierung

- **Hero:** Bringing E-Commerce to Real Estate — *Introducing a new era with BeyonityHELLO®.*
- **Kategorie / Vision:** Social Real Commerce — „the Amazon of Living." Social discovery (Instagram-artige Inspiration & Sharing) + transaktionale Effizienz (Amazon-artige Geschwindigkeit & Sicherheit).
- **Tagline:** Inspiring discovery, Amazon-grade checkout, conversion-obsessed — for residential real estate.
- **Problem-Frame:** Customers change. Real estate stays still. $7.4T globaler E-Commerce 2026 (von $6.4T 2025, >$8T 2027); 0.4–1.2 % Lead-to-Deal (NAR-Benchmark).
- **Drei Produkt-Wetten:** Close UX gap · Suite connectivity & data are the moat · Software is the work. ("Pragmatic over polished" · "first mover = burden of proof, our own data is the benchmark.")

## 2 · Markenarchitektur — BeyonityHELLO®

**Four products. One identity. End-to-end coverage.**
- **Navigator® Gen 6 — "The front door"** (mobile-first Social-Commerce-Engine; Signal-Sensor).
- **HELLO OS® — "The operating system"** (Brücke ERP↔CRM; Pipeline-Intelligenz, dynamisches Pricing, Matching; transparente Regeln statt Black Boxes).
- **Add-on: Realtime Tour** · **Add-on: Configurators.**

## 3 · Produkt 01 — Navigator® Gen 6  (vertieft)

**Pivot:** von der Nischen-3D-Showcase (Tier A) zur **mass-market Social-Commerce-Engine** für Wohnimmobilien. Treiber: my-rubics-Ökosystem (Beyonity + Garaio + imofix) und FY26-Liquiditätslage → struktureller Pivot nötig.

**Tier-Bifurkation (NEU) — Breadth vs Depth gelöst durch Trennung:**
- **Navigator Premium (Tier A) — Depth.** Immersive 3D/VR für Neubauten, Gen-6-Vision; handgefertigte Qualität, Flaggschiff.
- **Navigator Lite (Tier B) — Breadth.** Low-cost, skalierbar: AI-enhanced 2D-Fotos und/oder rechtlich nutzbare 3D-Tiles eines Providers, um bis zu ~100 % bestehender Mietportfolios abzudecken (kritisch für die Garaio-Installed-Base, 1.7M+ Units — manuelle 3D-Twins dafür sind ökonomisch unmöglich).
  - Komponenten: Template-Viewer (Standard-2D-Fotos + Grundrisse) · AI-Enhancement-Layer (Licht verbessern, Beschreibungen generieren, strukturierte Attribute extrahieren) · 3D-Tiles-Integration (Satellite-to-Building-Navigation ohne Bespoke-Modeling).
  - Recurring Revenue: CHF 1–2 pro Objekt (Property Manager).
- **Tier-Differenzierung ist visuell/experientiell, nicht strukturell** — gleiche Navigation/Flows über beide Tiers; Tier A bekommt explizites Premium-Badging.
- TODO(human): Verhältnis zur Achse „New-build-Navigator (Einmallizenz) vs Portfolio-Navigator (recurring)" (§ aus Deck) klären — Premium≈Neubau-Flaggschiff, Lite≈Portfolio/Re-letting? Namensführung vereinheitlichen.

**my-rubics-Imperativ:** Navigator ist nicht mehr Standalone-Visualisierung, sondern **Top-of-Funnel-Sensor des Ökosystems** — captured Verhaltenssignale (Dwell-Time, Interaktionen, Feature-Nutzung), generiert die **Single Resident Identity (SRI)**, die in Garaio und imofix fließt, und automatisiert die Vacancy-to-Marketing-Transition im Bestand/Re-letting.

**Gen-6 Sales Machine — Ziel: Application-to-Contract <24 h:**
- Mobile-first SPA mit Vertical-Swipe-Discovery (über beide Tiers konsistent).
- Activity-based Social Proof (echte Engagement-Signale statt künstlicher Knappheit, z.B. „12 people viewed this today").
- Live-Commerce: Echtzeit-Inventar-Sync (z.B. ERP) + Instant-Reservation („apply/buy now") → kein Launch-Day-Stau.

**KrakenX — Data Intelligence / Datamoat:** Navigator als verteiltes Sensornetz. Leads nach digitaler Körpersprache bewertet (nicht Form-Completion); Intent aus Sonnensimulation, Amenity-Checks, Vergleichsverhalten; aggregierte Engagement-Daten fließen zurück in BeyonityHELLO → portfolio-weite Pricing-/Allokationsentscheidungen.

**UX-Prinzipien (über beide Tiers):** Vertical-Swipe-Discovery · Social Co-Viewing (Sharing/Favoriting → organische Reichweite) · **No-Dead-End-Rule** (verkaufte Einheiten zeigen sofort Alternativen via Recommendations).

**Risiken/Mitigation (Navigator):** Brand-Dilution durch 2D-Lite → strikte UI-Trennung + Premium-Badging Tier A. Budget → Prompt-Engineering, RAG, enger Use-Case statt Custom-Models. Privacy/nFADP → Privacy-by-Design, anonymisiertes Intent-Scoring bis zur expliziten Conversion.

## 4 · Produkt 02 — HELLO OS®  (vertieft)

Positionierung: *"A unified real estate operating system. The bridge between ERP and CRM."* Kern-Differenzierung: **keine Historiendaten** — auf dem Navigator aufbauend werden **live, behaviorale Insights** erzeugt, um Outcomes vorherzusagen und Entscheidungen zu automatisieren.

**Drei Säulen:**
1. **Consumer Journey:** die richtigen Interessenten führen; maximale Convenience/Transparenz/Geschwindigkeit, wenn es ernst wird (Solvenz-/Bonitätsprüfung, Vertragsgenerierung — in <30 Sekunden).
2. **Pipeline Intelligence:** den „invisible funnel" sichtbar machen; über reines Volumen hinaus implizite Verhaltenssignale für Attrition (warum verloren) und Conversion (warum committed) — Dual-View für die echte Zuverlässigkeit der Pipeline.
3. **Argued Intelligence:** KI-Empfehlungen sind keine Black Boxes — transparente Business-Logik (rules > guesses).

**Architektur — Hybrid Data Core:**
- **ERP (Backend), Datenhoheit nach Asset-Typ:** Neubau → HELLO OS ist Source of Truth (Unit-Specs, Pricing, Infrastruktur nativ). Bestand → externes ERP ist Source of Truth; HELLO OS ist **Aktuator** (synct, managt nicht manuell). Trigger: ERP meldet „Termination" → Unit-Status automatisch „Green" (Available) → Marketing-Workflow startet.
- **CRM (Funnel-Engine), 3 Phasen:** (1) **Teaser** — Datensammlung, niedrige Hürde. (2) **Pricing** — „Listening"-Phase, Tiefendaten, Unit-Popularität ermitteln fürs Pricing. (3) **Active Marketing** — finale Preise gesetzt, Conversion/Closing.

**Beyonity Intelligence (AI & Logic) — Operational Agent, regelgesteuert:**
- **Dynamic Pricing „1/3-Regel" — INTERN — nicht live:** Baseline = Business-Case-Minimum (Floor-Price für Yield); Cap = 107 % der Baseline; am Ende der Pricing-Phase Ranking aller Units nach impliziter Nachfrage (Visits + Anzahl Interessenten): Top 1/3 → max (107 %), Mittel 1/3 → Mid-Range, Unteres 1/3 → Baseline. Finale Preissetzung durch Admin bestätigt (HITL).
- **Tenant-Mix-Konfigurator:** Eigentümer definieren Ziel-Quoten pro Projekt (z.B. „50 % Families, 30 % Couples, 20 % Singles" und/oder Alters-Splits) — v.a. Bestand, weniger Neubau. KI scort Bewerber nach Solvenz **und** „Portfolio-Fit" (Beitrag zum Ziel-Mix).
- **Applicant-Matching (gewichtete Hierarchie):** 1. Solvenz (Pass/Fail) → 2. Search-Profile-Match (passt die Unit zum Bedarf?) → 3. Owner-Kriterien (der Mix).

**Pipeline Intelligence — Signale (granulare Event-Listener, feeding „KrakenX"):**
- **Loss-KPI (warum verloren):** Price (>10 s auf Kostenaufschlüsselung, dann Exit → Preissensibilität) · Product (Grundriss/Sonnensim <5 s, Exit → Layout/Ausrichtung ungeeignet) · **Location (NEU)** (Map/POI-Ansicht, dann Exit → Makrolage-Mismatch) · Friction (Kontaktformular, Freeze bei Einkommen/Telefon → Privacy-Hürde/UX-Fehler).
- **Conversion-KPI (warum geblieben):** Validation (>3× zurück zum gleichen Grundriss → mental ownership) · Verification (Technik-Specs/Mustervertrag, 5 Min., bewegt sich im Dokument → rationale Due Diligence) · Speed (Top-10 % Registrierungs-Tempo → Dringlichkeit).
- **Reliability-Score:** Loss + Conversion kombiniert → Umsatzprognose deutlich präziser als Volumen allein. Dev-Requirement: granulare Event-Listener auf den genannten UI-Komponenten.

**Portfolio-Strategie & Cross-Selling — Global Search Profile:**
- Problem: in Projekt A (Owner X) abgelehnt, passt evtl. perfekt zu Projekt B (Owner Y).
- Lösung: einheitliches Such-Profil; **Constraint: expliziter Opt-in** zum „Portfolio-Matching".
- UI-Flow: „Unfortunately, this unit is taken. Would you like to activate your search profile to see matching units in other exclusive projects?" → Cross-Reference nur bei aktiver Zustimmung. Privacy-by-design, nFADP-konform, anonym bis zur Conversion (außer Warteliste).

## 5 · Closed-Loop / Why we win

Differenzierung = Konnektivität der Suite (erstes Closed-Loop-System). **Better together:** Navigator *generates the signal* (Verhalten/Intent/Demand/Drop-off → event-streamed in KrakenX) → HELLO OS *acts on it* (Pricing, Mix-Scoring, Candidate-Ranking, Automation; Pipeline-Intelligenz zurück in Navigators Empfehlungen). **Single Resident Identity** über Navigator · HELLO · my-rubics.

## 6 · Vier Gesetze des Social Real Commerce

24/7 sales, where you are · Conversion first · Transparency & play · Realtime data. (Details s. v2.1 §6.)

## 7 · my-rubics — Ökosystem

"The property at the center." Sechs Perspektiven (Prospective tenants · Tenants · Property managers · Owners · Craftsman · Third parties). Partner: Beyonity · imofix.io · GARAIO REM. "One platform. Six perspectives. One data sovereignty." Für internationale Skalierung: my-rubics mit lokalen Partnern modellieren, um GtM zu beschleunigen.

## 8 · Kennzahlen / Proof

**LOU-Luzern (48 h):** 26.32 % lead-to-tenant · 22 contracts (100 % signed) · 30.6 % rented out · 2′ record time.
- TODO(human): „−71.5 %" klären (Platzhalter-Verdacht) — nicht verwenden bis bestätigt.

## 9 · Ziele

- **Leerstand:** <1 Monat medianer Zwischen-Leerstand (Direction-Doc) — TODO(human): vs „<3 Wochen" im Deck abgleichen.
- **Operations:** −30 %+ Betriebskosten (Real-Estate-Marketing) für Kunden.
- **Launch:** 150+ Units in <24 h (Neubau beim Launch ausverkauft).

## 10 · Roadmap (3 Jahre)  (erweitert)

- **FY 26 · Lite-Transformation & pragmatische AI** — Theme: Suite-Vollständigkeit & operative Effizienz. *INTERN — nicht live:* hartes Add-on-Budget €73'800, Hires TBD.
  - Q1–Q2: Navigator Lite launchen (Viewer-Framework, 3D-Tiles; Ziel: Upsell in Garaios Re-letting-Base).
  - Q3: AI-Support-Wrapper „Navigator Assistant" (LLM-API; FAQs, Lead-Triage, Viewing-Koordination; Ziel: 50 % L1-Support deflecten).
  - Q4: Data-Readiness — KrakenX-Tracking (Clicks/Hovers/Feature-Usage), sauberer Behavioral-Dataset für FY27.
- **FY 27 · Deep Intelligence & proprietäre Modelle** — proprietäres Behavioral-Intent-Scoring; Smart Recommendations („Netflix for homes"); Dynamic Pricing v1 auf Navigator-Traffic.
- **FY 28 · The Autonomization** — Voice-driven Navigation/Search; predictive Pre-Marketing via imofix-Lifecycle-Signale; proaktive Listing-Delivery vor explizitem Suchverhalten.

## 11 · Beyonity & AI — Strategie & Haltung  (erweitert)

- **Warum jetzt:** Kostenkollaps (~280×/Token 2023→2025), Modelle werden Commodity; auf die Trajektorie wetten, nicht auf eine Technologie; early movers compound.
- **Heute:** model-agnostic — OpenAI, Anthropic, Gemini und **Parashift** (bzw. Parashift-ähnliche Dienste, je nach Use-Case) [RESOLVED: früher „Parashit"]. Shipping: AI-Triage im Support-Chat, Dossier-Processing, Continuous Improvement.
- **Bewusst nicht:** keine eigenen Frontier-Modelle (API-Call); FY26 *INTERN — nicht live:* kein AI-Engineer/Data-Scientist-Hire (proprietäre Modelle → FY27), alle FY26-AI-Initiativen via API-LLMs + deterministische, regelbasierte Logik; Fokus auf operativen Hebel statt R&D.
- **Moat:** "Our data is the only thing a competitor can't curl." product = model + tools + ui + our_data + the_journey.
- **The long bet:** "the end of apps" — wenn Interface generiert wird und 3D ~gratis ist, ist der Moat Daten + Vertrauen.
- **AI-Ziele (Auswahl):** 12 Mt.: 50–80 % L1 automatisiert · ≥60 % Adoption · ≥30 % Competitive Deals AI-beeinflusst. 24 Mt.: 20 % ARR aus AI-Edge · Application→Closing −50 % · Consumption-Revenue +300 % YoY. "Clients have no budget for IT projects. But they do for AI initiatives."
- **The ask:** get fluent · bring ideas · use it for real.
- **Zwei nicht-verhandelbare Regeln:** (1) Keine PII in nicht freigegebene Tools. (2) Ein Mensch shippt, nicht das Modell (Accountability).
- Generische AI-101-Folien (Deck 49–66): internes Enablement, kein Brand-Wording.

## 12 · Erfolgskennzahlen (Navigator-Direction, FY26→FY27 Targets)

| Dimension | FY26 | FY27 |
|---|---|---|
| Market coverage | 10 % aktive Units in Lite | >40 % in Lite |
| Operational efficiency | 50 % L1-Support automatisiert | 80 % automatisiert |
| Conversion | Baseline gemessen | 15 % schneller Application→Contract |
| Engagement | +10 % Session-Dauer | +25 % Session-Dauer |
| Sales impact | 3 große my-rubics-Wins | 20 % ARR aus AI-Features |

## 13 · Pricing (Quelle: Sales-Deck · Stand März 2026 · unverbindlich)

> Nicht in Neuausrichtungs-/Direction-Quellen; aus Sales-Deck übernommen.
- Navigator (Neubau, Einmallizenz): S CHF 5'200* · M CHF 7'500* · L CHF 12'500* · XL CHF 16'500* · Portfolio Navigator CHF 5'500* · >10 Gebäude: Offerte. (*zzgl. jährl. Service/Maintenance/Update: Vermietung CHF 1'500 / Verkauf CHF 2'000.)
- Realtime Tour Living CHF 6'000 · Commercial CHF 9'900 · Configurator Living ab CHF 25'000 · Commercial ab CHF 9'900 · Interior Visualization CHF 1'850 · Exterior Visualization CHF 1'500.
- Add-ons: Integrated Website CHF 3'000 · Balcony View Panorama CHF 150 · Data Dashboard CHF 4'900 · 360 Pano Exterior CHF 3'500 · Sun Simulation ab CHF 2'000 · Parking Navigator CHF 2'500 · POI Panorama CHF 1'000 · Secondary Room Navigator CHF 1'000 · Floor Plan ab CHF 85 · Info Flags CHF 500.
- TODO(human): vs Lite-Recurring „CHF 1–2/Objekt/Monat" vereinheitlichen.

## 14 · Kontakt (Quelle: Sales-Deck)

Beyonity Switzerland GmbH · switzerland@beyonity.com · +41 32 552 50 60 · Fabrikstrasse 11, CH-2543 Lengnau.

## 15 · Risiken & Mitigation (Navigator-Direction)

- **Brand-Dilution** (2D-Lite schwächt Premium-Wahrnehmung) → strikte UI-Trennung + explizites Premium-Badging Tier A.
- **Budget** (begrenzte Mittel → generische AI-Erfahrung) → Prompt-Engineering, RAG, enger Use-Case-Scope statt Custom-Models.
- **Privacy/nFADP** (Tracking-Sensibilität) → Privacy-by-Design, anonymisiertes Intent-Scoring bis zur expliziten Conversion.

## 16 · Offene Punkte / TODO(human)

1. Kanonischer Claim (Hero „Bringing E-Commerce to Real Estate" vs Sales „Find. Click. Rent./Buy.").
2. Suite-Messaging „2 Kern + Add-ons" vs „Four products".
3. Tier-Namen: Premium/Lite vs New-build/Portfolio vereinheitlichen.
4. Leerstandsziel <1 Monat (Direction) vs <3 Wochen (Deck).
5. Portfolio-Recurring: CHF 1.– vs 1–2/Objekt/Monat vs 5'500 Einmallizenz.
6. „−71.5 %" klären/streichen.
7. DE-Übersetzungen des englischen Wordings für den Hub (maschinell + Sternchen, s. Prompt).
8. Was bleibt INTERN (Budget €73.8k, 1/3-Pricing-Interna, Liquiditätslage) → nicht auf die Live-Seite.

---

## Anschluss an Roadmap / Phase 1

- **Live-Hub bleibt customer-facing & high-level:** Produkte (Premium/Lite, HELLO-OS-Fähigkeiten), Vier Gesetze, Proof. INTERN-markierte Inhalte (Budget, Pricing-Interna, FY26-Liquidität, 1/3-Regel-Mechanik) NICHT pushen.
- **Korrektur-Lauf:** Gleiche Datei wie der Korrektur-Prompt erwartet — als `brand-v2-neuausrichtung.md` speichern (ersetzt die v2.1-Fassung). Sonst keine Prompt-Änderung nötig; die Produkt-Cards im Hub dürfen Premium/Lite + HELLO-OS-Säulen aufnehmen, aber keine INTERN-Inhalte.
