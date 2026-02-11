# texst

`texst` is a Typst package for LaTeX-like academic paper formatting.

## Install

After publication on Typst Universe:

```typst
#import "@preview/texst:0.1.0": *
```

## Quick Start

```typst
#import "@preview/texst:0.1.0": paper

#show: doc => paper(
  title: [A Sample Research Paper],
  subtitle: [A Typst Template with LaTeX-Like Layout],
  authors: ((name: [First Author]), (name: [Second Author])),
  date: datetime.today().display("[month repr:long] [day], [year]"),
  abstract: [This paper demonstrates the texst package.],
  doc,
)

#heading(level: 1, outlined: false)[Introduction]

This is a minimal example.
```

## Public API

- `paper(title:, subtitle:, authors:, date:, abstract:, style:, doc)`
- `nneq(eq)`
- `caption_note(body)`
- `caption_with_note(title, note)`
- `table_note(body)`
- `theorem`, `proof`, `prop`, `lem`, `rem`, `ass`

## Style Overrides

Use the `style` dictionary in `paper(...)` to override defaults.

```typst
#show: doc => paper(
  title: [Styled Paper],
  style: (
    body_font: "Libertinus Serif",
    page_margin: (x: 1in, y: 1in),
    heading_numbering: "1.",
  ),
  doc,
)
```

## Template

Initialize from template:

```bash
typst init @preview/texst:0.1.0
```

## Development

- `examples/minimal.typ` is the local smoke test.
- `template/main.typ` is the package template entrypoint.
