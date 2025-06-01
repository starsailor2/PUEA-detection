@echo off
echo Compiling Compact Thesis...

rem Run pdflatex to create initial PDF with references
pdflatex -synctex=1 -interaction=nonstopmode thesis_compact.tex

rem Run bibtex to process citations
bibtex thesis_compact

rem Run pdflatex twice more to resolve references and citations
pdflatex -synctex=1 -interaction=nonstopmode thesis_compact.tex
pdflatex -synctex=1 -interaction=nonstopmode thesis_compact.tex

echo Compilation complete!
echo.
echo If there were no errors, you should find thesis_compact.pdf in this directory.
echo.

pause
