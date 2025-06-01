# LaTeX Thesis Formatting Guide

This document summarizes all the formatting enhancements made to the LaTeX thesis on "Primary User Emulation Attack Detection in Cognitive Radio Networks".

## Document Typography

- Enhanced typography with microtype package
- Improved font settings for better readability
- Consistent spacing throughout the document

```latex
\usepackage[activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,factor=1100,stretch=10,shrink=10]{microtype}
```

## Chapter and Section Formatting

- Colored chapter titles with custom formatting
- Enhanced section headings with better visual hierarchy

```latex
\chapter{\texorpdfstring{\color{chaptercolor}\scshape CHAPTER TITLE}{CHAPTER TITLE}}
\thispagestyle{fancy}
\begin{center}
\begin{tikzpicture}
\node[draw=chaptercolor!70, thick, rounded corners=5pt, fill=chaptercolor!10, minimum width=0.8\textwidth, minimum height=3em] 
{\Large\itshape\bfseries Chapter subtitle or description};
\end{tikzpicture}
\end{center}
```

## Mathematical Notation

Consistent styling for mathematical notation using custom commands:

- `\vector{x}`: Vectors (green, bold italic)
- `\matrix{M}`: Matrices (brown, bold upright)
- `\variable{t}`: Scalar variables (blue)
- `\parameter{n}`: Parameters and constants (red)
- `\formula{expr}`: Formulas and functions (purple)

Example:
```latex
\formula{d_{\text{Manhattan}}(\vector{Y}_t, \vector{Y}_{t'})} = 
    \sum_{j=1}^{\parameter{n}} \left|\vector{Y}_{t,j}^{\text{norm}} - 
    \vector{Y}_{t',j}^{\text{norm}}\right|
```

## Equation Formatting

Enhanced equation display with colored boxes:

```latex
\begin{tcolorbox}[enhanced, colback=blue!5, colframe=blue!75!black, 
arc=0pt, outer arc=0pt, boxrule=1pt, left=5pt, right=5pt, top=6pt, bottom=6pt]
\begin{equation}
    \formula{d_{\text{Manhattan}}(\vector{Y}_t, \vector{Y}_{t'})} = 
    \sum_{j=1}^{\parameter{n}} \left|\vector{Y}_{t,j}^{\text{norm}} - 
    \vector{Y}_{t',j}^{\text{norm}}\right|
\end{equation}
\end{tcolorbox}
```

## Table Formatting

Enhanced tables with color and improved layout:

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

## Figure Enhancements

### System Model Figure
- Added drop shadows to nodes
- Improved node colors with better contrast
- Enhanced connection lines with varying thickness and colors
- Added semi-transparent ranges for visual effect
- Created a professional legend with background box

### Detection Framework Figure
- Added background panels for visual separation
- Improved node styling with consistent colors and drop shadows
- Enhanced arrow visibility and readability
- Added stage labels for better context

### Clustering Visualization Figure
- Added background shading for different regions
- Improved point markers with better contrast and visibility
- Enhanced clustering boundaries with different styles
- Added centroid markers and labels

### Performance Comparison Figures
- Added pattern fills for better distinction in print
- Improved color scheme for better contrast
- Added annotations for significant improvements
- Enhanced legends with background and drop shadow

## Content Boxes

Enhanced content presentation with tcolorbox:

```latex
\begin{tcolorbox}[enhanced, colback=blue!5, colframe=blue!75!black, 
                  title=Box Title, sharp corners]
Box content goes here.
\end{tcolorbox}
```

## Colors

Consistent color scheme throughout the document:

```latex
\definecolor{chaptercolor}{RGB}{0,60,110}
\definecolor{formulacolor}{RGB}{70,30,100}
\definecolor{variablecolor}{RGB}{0,20,120}
\definecolor{parametercolor}{RGB}{180,50,50}
\definecolor{vectorcolor}{RGB}{0,100,0}
\definecolor{matrixcolor}{RGB}{120,60,0}
```

## Required Packages

```latex
\usepackage{microtype}
\usepackage{xcolor}
\usepackage{tcolorbox}
\usepackage{colortbl}
\usepackage{tikz}
\tcbuselibrary{skins, breakable}
\usetikzlibrary{arrows,shapes,positioning,shadows,trees,calc,decorations.pathmorphing,patterns}
```
