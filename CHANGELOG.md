# Changelog

## Unreleased

- Added optional `affiliation` and `contact` fields for each entry in `authors:`.
- Title block text (`title`, `subtitle`, `affiliation`, `contact`) now follows body text color and is no longer affected by `cmain_color`/`csub_color`.
- Updated README with a single-file GitHub download flow for `src/lib.typ` (no full repo clone required).
- Added README version guidance and a pinned `<ref>` raw URL example for reproducible installs.

## 0.1.2 - 2026-02-14

- Fixed theorem/proof-like environments becoming centered by restoring left alignment for `thmenv` figures.
- Fixed block equation spacing inside theorem environments to match global equation spacing.

## 0.1.1 - 2026-02-12

- Added configurable style controls for colors, typography size, and line spacing.
- Added `cmain` and `csub` helper functions for applying theme colors in content.
- Added fine-grained accent controls for links, refs, cites, and footnotes.
- Updated README to focus on `@preview` package usage and migration guidance.

## 0.1.0 - 2026-02-11

- Initial public release.
- Added `paper(...)` document wrapper with a LaTeX-like layout.
- Added theorem/proof environments via `ctheorems`.
- Added caption and equation helper utilities.
- Added package template and minimal example.
