# Bw Gradual — Font Assets

Lizenzierte Schrift von Branding With Type.
Google Drive: https://drive.google.com/drive/folders/1lwWAq18Y59RSv9QfBdWuX3L8XB-cw1LK

## Schnitte im Repo
| Schnitt | Verwendung |
|---|---|
| ExtraBold | Headlines, CTAs, Hervorhebungen |
| Bold | Subheadlines |
| Medium | Body-Text, Zitate |
| Regular | Lauftext, kleine Grössen |

## CSS-Einbindung (Web)
```css
@font-face {
  font-family: 'Bw Gradual';
  src: url('./woff2/BwGradual-ExtraBold.woff2') format('woff2'),
       url('./otf/BwGradual-ExtraBold.otf') format('opentype');
  font-weight: 800;
  font-style: normal;
  font-display: swap;
}
@font-face {
  font-family: 'Bw Gradual';
  src: url('./woff2/BwGradual-Medium.woff2') format('woff2'),
       url('./otf/BwGradual-Medium.otf') format('opentype');
  font-weight: 500;
  font-style: normal;
  font-display: swap;
}
```

## Fallback (kostenlos)
Sora via Google Fonts: https://fonts.google.com/specimen/Sora
