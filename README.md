# Résumé

Personal résumé written in LaTeX.

## Building

You'll need a TeX distribution and `sed` installed.

* **Linux**: Check your package manager or use
  [TeX Live](http://www.tug.org/texlive).
* **macOS**: [MacTeX](https://www.tug.org/mactex/) is pretty swell and is
  easily installable via [Homebrew-Cask](https://caskroom.github.io/).
* **Windows**: I am a fan of [MiKTeX](miktex.org).
  [TeX Live](http://www.tug.org/texlive) is also available.

Then:

1. Ensure top-level `.address`, `.phone`, `.cl-header`, `.cl-body`, and
   `.cl-addr-to` files exists in the project directory (alongside this file).
   These should contain LaTeX content (so: escape `#`, etc.) and will be
   interpolated with `resume.ltx` and `cover-letter.ltx` (via `sed`) during
   document preparation.
2. Run `make`.

The resulting résumé and cover letter are written as PDF documents to
`out/resume.pdf` and `out/cover-letter.pdf`, respectively.
