# [DESIGN.md](http://DESIGN.md) — Design System

Maps Figma Variables / Styles to code tokens. **Figma is the source of truth for values.** This file only defines which code token to use for each Figma name.

## Rules

- Always use the tokens below. Never hard-code raw colors, font sizes, spacing, or radius.
- Reuse existing components before creating new ones.
- If a Figma value has no matching token, do not create one. Use the closest token and report it as a 🟡 Gap (see [FIGMA.md](http://FIGMA.md)).
- Do not add or modify tokens without approval.

## Colors


| Figma Variable       | Code                      | Usage             |
| -------------------- | ------------------------- | ----------------- |
| `Text/Primary`       | `Color.textPrimary`       | Main text         |
| `Text/Secondary`     | `Color.textSecondary`     | Supporting text   |
| `Background/Default` | `Color.backgroundDefault` | Screen background |
| `Brand/Primary`      | `Color.brandPrimary`      | Primary actions   |


## Typography


| Figma Text Style  | Code                     | Usage            |
| ----------------- | ------------------------ | ---------------- |
| `Title/Large`     | `.font(.titleLarge)`     | Screen titles    |
| `Body/Regular`    | `.font(.bodyRegular)`    | Body text        |
| `Caption/Regular` | `.font(.captionRegular)` | Captions, labels |


## Spacing


| Figma Variable | Code         |
| -------------- | ------------ |
| `Spacing/XS`   | `Spacing.xs` |
| `Spacing/S`    | `Spacing.s`  |
| `Spacing/M`    | `Spacing.m`  |
| `Spacing/L`    | `Spacing.l`  |


## Radius


| Figma Variable | Code       |
| -------------- | ---------- |
| `Radius/S`     | `Radius.s` |
| `Radius/M`     | `Radius.m` |


## Components


| Figma Component  | Code            | Path                              |
| ---------------- | --------------- | --------------------------------- |
| `Button/Primary` | `PrimaryButton` | `Earthu/DesignSystem/Components/` |
| `Card/Default`   | `DefaultCard`   | `Presentation/Components/Card/`   |
