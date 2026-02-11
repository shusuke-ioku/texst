#import "../src/lib.typ": paper, theorem, proof, nneq

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

#outline(title: [Contents])

#heading(level: 1)[Introduction]

This sample keeps content intentionally generic.

#heading(level: 1)[A Theorem]

#theorem[
For any real numbers $a$ and $b$, if $a = b$, then $a + 1 = b + 1$.
]

#proof[
Add 1 to both sides.
]

#nneq($x^2 + y^2 = z^2$)

#heading(level: 1)[Appendix]

#heading(level: 2)[Additional Derivation]

This appendix section is included as an example of back matter.
