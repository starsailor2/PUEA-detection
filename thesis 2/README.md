# Consolidated LaTeX Thesis on PUEA Detection in Cognitive Radio Networks

## Overview
This repository contains a consolidated version of a LaTeX thesis on "Primary User Emulation Attack Detection in Cognitive Radio Networks". The thesis has been reorganized into a more compact file structure to improve compilation time and make it easier to work with on platforms like Overleaf.

## File Structure

### Main Files
- `thesis_compact.tex` - Main LaTeX file containing all document setup and structure
- `content_part1.tex` - Introduction and Literature Review chapters
- `content_part2.tex` - System Model and Feature Extraction chapters (includes system model figure directly)
- `content_part3.tex` - Traditional Clustering and Enhanced Detection chapters (includes all visualization figures directly)
- `content_part4.tex` - Experimental Setup, Results, Discussion, and Conclusion chapters
- `appendix.tex` - Appendices with mathematical derivations, algorithms, and supplementary materials
- `references.bib` - Bibliography file with all citations

### Figure Integration
All figures are now directly integrated into their respective content files rather than being referenced from external files in the figures/ directory. This improves:
- Compilation time and runtime
- Ease of document maintenance
- Simplified dependency management

### Supporting Files
- `compile_compact.bat` - Windows batch file for easy compilation

## Compilation Instructions

### Using Overleaf
1. Create a new project in Overleaf
2. Upload all the files from this repository
3. Set `thesis_compact.tex` as the main file
4. Click "Recompile" to generate the PDF

### Local Compilation (Windows)
1. Ensure you have a LaTeX distribution installed (e.g., MiKTeX or TeX Live)
2. Double-click `compile_compact.bat` or run it from the command prompt
3. The compiled PDF will be created in the same directory

### Manual Compilation
If you prefer to compile manually, run the following commands in sequence:
```
pdflatex thesis_compact
bibtex thesis_compact
pdflatex thesis_compact
pdflatex thesis_compact
```

## Design Features
- Enhanced typography with microtype package
- Beautiful chapter headings and section formatting
- Consistent figure, table, and algorithm styling
- Well-organized content with clear structural divisions
- Professional-grade TikZ figures and diagrams
- Carefully formatted tables and algorithms

## Mathematical Notation Styling Guide

For consistent mathematical notation throughout the thesis, the following commands are defined:

- `\vector{x}` - For vector variables (displayed in green, bold italic)
- `\matrix{M}` - For matrices (displayed in brown, bold upright)
- `\variable{t}` - For scalar variables (displayed in blue)
- `\parameter{n}` - For parameters and constants (displayed in red)
- `\formula{expr}` - For formula names and functions (displayed in purple)

Example usage:

```latex
\formula{d_{\text{Manhattan}}(\vector{Y}_t, \vector{Y}_{t'})} = 
    \sum_{j=1}^{\parameter{n}} \left|\vector{Y}_{t,j}^{\text{norm}} - 
    \vector{Y}_{t',j}^{\text{norm}}\right|
```

### Enhanced Equation Display

Equations can be displayed with colored boxes for emphasis using the tcolorbox package:

```latex
\begin{tcolorbox}[enhanced, colback=blue!5, colframe=blue!75!black, 
                  arc=0pt, outer arc=0pt, boxrule=1pt]
\begin{equation}
    \formula{d_{\text{Manhattan}}(\vector{Y}_t, \vector{Y}_{t'})} = 
    \sum_{j=1}^{\parameter{n}} \left|\vector{Y}_{t,j}^{\text{norm}} - 
    \vector{Y}_{t',j}^{\text{norm}}\right|
\end{equation}
\end{tcolorbox}
```

### Table Styling Guidelines

Enhanced tables use the following formatting with tcolorbox and colortbl:

```latex
\begin{tcolorbox}[enhanced, colback=white, colframe=blue!75!black, 
                  title={\textbf{Table Title}},
                  fonttitle=\bfseries, 
                  width=0.9\linewidth,
                  drop shadow southeast]
\rowcolors{1}{blue!5}{white}
\begin{tabular}{l>{\centering\arraybackslash}p{2.5cm}>{\centering\arraybackslash}p{2.5cm}}
    \toprule
    \rowcolor{blue!20}
    \textbf{Header 1} & \textbf{Header 2} & \textbf{Header 3} \\
    \midrule
    \textbf{Row 1} & \cellcolor{green!10}Data 1 & Data 2 \\
    \bottomrule
\end{tabular}
\end{tcolorbox}
```

## Original Structure
The original thesis was structured with numerous individual files:
- Main file: `main.tex`
- Separate chapter files in the `chapters/` directory
- Figure definitions in the `figures/` directory
- Tables in the `tables/` directory

The consolidation maintains all the original content while simplifying the file structure to improve compilation efficiency.

## License
This thesis template is provided for educational purposes.
