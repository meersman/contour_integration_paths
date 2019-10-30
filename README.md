# Contour Integration Paths
tikz figures of complex contour integration paths

# Compilatino
To compile the document together, a `makefile` is included. In the terminal simply execute,
```bash
make
```
Figures can also be outputted to an eps image to be included in separate documents or for distribution. This is accomoplished with the externalization tikz library, and a separate tex file `main_eps.tex` is included with the following in the document preamble,
```tex
\usetikzlibrary{external}
\tikzset{external/system call={latex \tikzexternalcheckshellescape -halt-on-error
-interaction=batchmode -jobname "\image" "\texsource";
dvips -o "\image".ps "\image".dvi;
ps2eps "\image.ps"}}
\tikzexternalize
```
In the document, uncomment the figure you would like to compile. The makefile also has an option to compile this document using a shell escape with `latex --shell-escape` rather than `pdflatex` used by the `latexmk` command. This option is selected in the make file by executing in the terminal,
```bash
make eps
```
