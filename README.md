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

1. Ensure a top-level `.address` file exists in the project directory
   (alongside this file). It should contain LaTeX content and will be
   interpolated with `resume.ltx` (via `sed`) during document preparation.
2. Run `make`.

The resulting résumé is written as a PDF to `out/resume.pdf`.
