# William Fulton — Algebraic Curves: An Introduction to Algebraic Geometry

## Source and credit

- **Author:** William Fulton.
- **Original publication:** 1969; revised author-maintained electronic text dated **January 28, 2008**.
- **Title:** _Algebraic Curves: An Introduction to Algebraic Geometry_.
- **Author-hosted text:** https://www.math.lsa.umich.edu/~wfulton/CurveBook.pdf
- **Independent catalog record:** https://onlinebooks.library.upenn.edu/webbin/book/lookupid?key=olbp45400
- **Redistribution:** the author provides the electronic edition for free reading. Do not infer permission to mirror the PDF in this repository; use the original link. Do not present these notes as part of the book.

## What to read first

Start with affine algebraic sets, polynomials, ideals, varieties, coordinate rings, and the transition from equations to geometric objects. Subsequent notes should cite precise sections and examples rather than rely on secondhand summaries.

## Connections to computational arithmetic

Polynomial arithmetic supplies mathematically meaningful candidate workloads for studying *integer* multiplication. Examples for **future derivation**:

- Multiply coefficients of two polynomials in \(\mathbb Z[x]\), then compare ordinary coefficient convolution to multiplication after packing the coefficients into a large radix-\(2^w\) integer. Ensure radix width is large enough to avoid accidental overlap/carry aliasing.
- Use bounded integer polynomial families to form discriminants, resultants, and elimination problems; define generators and verify exact output independently.
- Derive explicit coordinate-ring calculations in quotient rings and distinguish multiplication of integer representatives from multiplication modulo an ideal.
- Compare sparse monomials, dense coefficients, symmetric products, and degree/height growth as input **structure**, not claims that a particular multiplier is already fast.

These suggestions are **not** book-derived numerical cases yet. They require correct definitions, provenance, generators, and tests.

## Neighboring shelves

- [ComputerScience: number theory and multiplication benchmark reading](https://github.com/walnut-burgundy/computer-science/tree/how-long%2Bhow-wide/books)
- [ICK: portable large-multiplication harness](https://github.com/dilapidated-shed/ick/tree/main/benchmarks/bigmul)
- [Seifert: arithmetic topology and supporting knot theory](https://github.com/isomorphismes/seifert/tree/main/books)
- [OpenAI 2026 multiplication paper intake](https://github.com/walnut-burgundy/computer-science/tree/how-long%2Bhow-wide/integer-multiplication/openai-2026)
