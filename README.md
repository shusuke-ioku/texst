# texst

`TeXst` is a Typst package for LaTeX-like academic paper formatting.

## Start Here

```typst
#import "@preview/texst:0.1.0": paper
```
or use all the helpers:
```typst
#import "@preview/texst:0.1.0": paper, nneq, caption-note, table-note, theorem, proof, prop, lem, rem, ass, cmain, csub, caption-with-note
```

## Fastest Way to Use It

Copy this into your `main.typ`:

```typst
#import "@preview/texst:0.1.0": paper, nneq, caption-note, table-note, theorem, proof, prop, lem, rem, ass, cmain, csub, caption-with-note

#show: doc => paper(
  title: [Paper Title],
  subtitle: [Optional Subtitle],
  authors: (
    (name: [Author One]),
    (name: [Author Two]),
  ),
  date: datetime.today().display("[month repr:long] [day], [year]"),
  abstract: [Write a concise abstract here.],
  doc,
)

#outline(title: [Contents])

#heading(level: 1)[Introduction]

Start writing your paper.
```

## Initialize a Template Project

```bash
typst init @preview/texst:0.1.0
```

This generates a starter project from `template/main.typ`.

## Migrate an Existing Typst File

If you already have a Typst document, use an LLM coding agent to adapt it to `texst` instead of rewriting by hand.

Suggested workflow:

1. Keep your existing content sections as-is.
2. Replace your current page/layout/title setup with `paper(...)`.
3. Keep custom macros only if they do not overlap with `texst` helpers.
4. Re-run compile and fix any remaining import/name conflicts.

Example prompt for an LLM agent:

```text
Migrate this Typst file to use the texst package.

Requirements:
- Use: #import "@preview/texst:0.1.0": paper
- Wrap document with:
  #show: doc => paper(
    title: [...],
    subtitle: [...],
    authors: (...),
    date: ...,
    abstract: [...],
    doc,
  )
- Preserve all existing section content and citations.
- Remove or refactor conflicting layout/title macros.
- Return a complete updated .typ file.
```

## Public API

- `paper(title:, subtitle:, authors:, date:, abstract:, style:, doc)`
- `nneq(eq)` (unnumbered display equation)
- `caption_note(body)`
- `caption_with_note(title, note)`
- `table_note(body)`
- `theorem`, `proof`, `prop`, `lem`, `rem`, `asp`

## Style Overrides

Pass a `style` dictionary to override defaults:

```typst
#show: doc => paper(
  title: [Styled Paper],
  style: (
    body_font: "Libertinus Serif",
    page_margin: (x: 1in, y: 1in),
    heading_numbering: "1.",
    accent_main: rgb(20, 40, 120),
  ),
  doc,
)
```

Common keys include:
- `page_margin`, `page_numbering`
- `body_font`, `body_size`
- `paragraph_leading`, `paragraph_indent`
- `heading_numbering`, `heading_size`, `heading_weight`
- `footnote_numbering`, `accent_main`

## Local Development

- `examples/minimal.typ` is the local smoke test.
- `template/main.typ` is the package template entrypoint.
- Compile locally:

```bash
typst compile --root . examples/minimal.typ /tmp/minimal.pdf
```
