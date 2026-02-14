#import "../src/lib.typ": paper, theorem, proof, prop, nneq, caption-with-note

#show: doc => paper(
  title: [A Minimal Academic Paper],
  subtitle: [Demonstration of the texst Package],
  authors: (
    (name: [First Author]),
    (name: [Second Author]),
  ),
  date: datetime.today().display("[month repr:long] [day], [year]"),
  abstract: [
    This is a minimal, generic example that demonstrates the package layout and
    theorem environments.
  ],
  doc,
)

#heading(level: 1, outlined: false)[Introduction]

This sample keeps content intentionally generic.

#heading(level: 1, outlined: false)[Core Examples]

#heading(level: 2, outlined: false)[Equation Example]

#nneq($
f(x) = alpha + beta x + epsilon
$)

#heading(level: 2, outlined: false)[Theorem Example]

#theorem[
For any real numbers $a$ and $b$, if 
$
a = b
$
then $a + 1 = b + 1$.
]

#proof[
Add 1 to both sides.
]

#figure(
  table(
    columns: 3,
    [Variable], [Estimate], [Std. Error],
    [Intercept], [0.42], [0.11],
    [Treatment], [0.18], [0.07],
  ),
  caption: caption-with-note(
    [Illustrative Regression Output],
    [Values are placeholders for demonstration only.],
  ),
)

#pagebreak()
#counter(figure).update(0)
#set figure(numbering: (..n) => "A." + numbering("1", n.at(0)))

#counter(heading).update(0)
#set heading(
  numbering: "A.1.",
  supplement: "Appendix"
)

#align(center)[
  #smallcaps(text(1.2em)[*Appendix*])
]

#show outline.entry: it => link(
  it.element.location(),
  it.indented(it.prefix(), it.inner()),
)
#outline()

#heading(level: 1)[Omitted Proofs]
