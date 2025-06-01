@echo off
REM Batch file to compile the LaTeX thesis

echo Compiling LaTeX thesis...
pdflatex -interaction=nonstopmode main.tex
bibtex main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
echo Compilation complete!
echo PDF file should be available as main.pdf
