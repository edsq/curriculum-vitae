# Curriculum Vitae: Edward Eskew

[![LaTeX build](https://github.com/edsq/curriculum-vitae/actions/workflows/build.yml/badge.svg)](https://github.com/edsq/curriculum-vitae/actions/workflows/build.yml)

This is the repository for my CV.


## Requirements

- A distribution of LaTeX and the [CurVe](https://ctan.org/pkg/curve) package available.
  - I used [MacTeX](https://www.tug.org/mactex/) for this, which came with CurVe.
- For the default font options, you need at least the following fonts installed on your
  system:
  - [Inter](https://rsms.me/inter)
- To use `latexmk`:
  - [latexmk](https://www.cantab.net/users/johncollins/latexmk/) itself, of course.
    This certainly comes with your LaTeX distribution.
  - [xetex](https://ctan.org/pkg/xetex): This also certainly comes with your LaTeX
    distribution.
  - [Skim](https://skim-app.sourceforge.io): I chose Skim for the PDF viewer because it
    supports automatic reloading and SyncTeX (though SyncTeX isn't working with my vim
    setup, yet).  I haven't yet explored any other options here besides it and Preview.


## Typesetting

To build the PDF and open a preview in Skim that updates on every change to the source:

```
$ latexmk -pvc
```

Omit the `-pvc` flag to simply build the PDF without opening a preview or updating it on
changes.

The typset output is `_build/resume.pdf`.

Of course, the PDF can be built without `latexmk`, such as with `xelatex` directly, or
using `TeXShop`.


## Document structure

In the CurVe package, a CV consists of one main skeleton file, with each section or
"rubric" going in its own separate file.  The skeleton file here is `resume.tex`, which
defines some custom commands, sets some fonts and style choices, the headers and title,
and then lists each included rubric.  I put rubrics in a `rubrics/` directory to keep
only one `*.tex` file in the root.


## Font and style options

The `resume.tex` skeleton file includes a simple `\select` command for easily switching
between different fonts/styles.  It takes 4 arguments (at the moment) and is hardcoded
in its definition to just pick one of them to add to the TeX source:

```tex
\newcommand{\select}[4]{#1}
```

Thus, to change to one of the other options given in the actual invocation of the
`\select` command, you would change the definition in the preamble.  For example, to use
the second option: `\newcommand{\select}[4]{#2}`.


## GitHub releases

I've configured my build workflow to publish a release with a built PDF when the commit
is tagged.  I'll tag according to [CalVer](https://calver.org), with the format
`YYYY.0M.0D.MICRO`, where the `MICRO` will start from zero and increment to account for
multiple releases over one day.


## Acknowledgements

The original skeleton for this CV is thanks to Michael McNeil Forbes.

I am using the open source fonts [Inter](https://rsms.me/inter), Bistream Vera, and
[Jost*](https://indestructibletype.com/Jost.html).

Inter is Copyright (c) 2016 The Inter Project Authors (https://github.com/rsms/inter).

Bitstream Vera is Copyright (c) 2003 by Bitstream, Inc. All Rights Reserved. Bitstream
Vera is a trademark of Bitstream, Inc.

Jost* is Copyright 2020 The Jost Project Authors
(https://github.com/indestructible-type/Jost).


