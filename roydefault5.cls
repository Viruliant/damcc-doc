% Copyright 2023. This work is licensed under a CC BY NC ND 4.0 license.
% !TEX TS-program = xelatex
% !TEX encoding = UTF-8 Unicode
% \ProvidesClass{classname}[2017/02/27 notes]
\documentclass[10pt]{article}%__________________________________________________________________Page geometry
% \usepackage[letterpaper,margin=0.6in,marginratio=3:5,twoside]{geometry}

%\usepackage[a5paper,margin=9mm,marginratio=1:1,twoside,headsep=0mm,landscape,%A5 148.5 x 210 mm
%\usepackage[a5paper,margin=15mm,marginratio=1:1,twoside,headsep=0mm,landscape,%A5 148.5 x 210 mm
%\usepackage[a5paper,margin=13mm,marginratio=1:1,twoside,headsep=0mm,landscape,%A5 148.5 x 210 mm
%\usepackage[paperwidth=176mm, paperheight=250mm,margin=13mm,marginratio=1:1,twoside,headsep=0mm,%b6= 176 x 250 mm
\usepackage[a5paper,margin=13mm,marginratio=1:1,twoside,headsep=0mm,%A5 148.5 x 210 mm
%\usepackage[a4paper,margin=13mm,marginratio=1:1,twoside,headsep=0mm,
includehead,% See below for an explanation
%includefoot
]{geometry}
%\usepackage[paperwidth=125mm, paperheight=176mm,margin=18mm,marginratio=1:1,twoside]{geometry}%b6=125 x 176 mm
% \usepackage[a5paper,margin=13mm]{geometry}
%\usepackage[letterpaper,margin=0.6in,marginratio=3:5,twoside]{geometry}
% \usepackage[paperwidth=5.5in, paperheight=8.5in, margin=13mm]{geometry}
% \usepackage{relsize}
% \relscale{0.3} % or whatever scaling is desired
%\geometry{landscape} % sets the page to landscape orientation

%\usepackage{ulem}
% \usepackage{fancyhdr} % This should be set AFTER setting up the page geometry
%\pagestyle{fancyplain} % options: empty , plain , fancy
%_____________________________________________________________________MATH STUFF
\usepackage{amsmath,amssymb,amsopn}% read amsldoc.pdf for more details
\usepackage{fontspec}
\usepackage{unicode-math}
%\DeclareMathOperator{\}{}
\DeclareMathOperator{\arccot}{arccot}
\DeclareMathOperator{\arcsec}{arcsec}
\DeclareMathOperator{\arccsc}{arccsc}
\DeclareMathOperator{\sech}{sech}
\DeclareMathOperator{\csch}{csch}
\DeclareMathOperator{\arcsinh}{arcsinh}
\DeclareMathOperator{\arccosh}{arccosh}
\DeclareMathOperator{\arctanh}{arctanh}
\DeclareMathOperator{\arccoth}{arccoth}
\DeclareMathOperator{\arcsech}{arcsech}
\DeclareMathOperator{\arccsch}{arccsch}
%\DeclareMathOperator{\min}{min}
%\DeclareMathOperator{\max}{max}
%____macros to make quick note taking easier all escapes under 3 chars
\def\t{\text }
\def\parti{\partial}
\def\o{\over}
\def\({\left( }
\def\){\right) }
\def\[{\left[ }
\def\]{\right] }
% \def\l{\left. }
% \def\r{\right. }
%\usepackage{leqno}
%__________________________________________________________________Font settings
% \usepackage[scaled=.92]{helvet}
% \usepackage{times}
% \usepackage{morefloats}
\usepackage{xcolor}
\usepackage{titlesec}
% \defaultfontfeatures{Ligatures=TeX}
%\setsansfont{'Quicksand[wght].ttf'} % Set sans serif font
%\setmainfont{Quicksand} %#/usr/share/texlive/texmf-dist/fonts/opentype
%[    Extension = .ttf,
%   UprightFont = *-Light,
%      BoldFont = *-Regular,
%    ItalicFont = *-Italic,
%BoldItalicFont = *-Italic,
%]
%/nix/store/rfm346g073yrry03jna1ixwibdsirsc3-google-fonts-unstable-2022-02-26/share/fonts/truetype/Montserrat[wght].ttf
%\setsansfont{'Quicksand[wght].ttf'} % Set sans serif font
%\setsansfont{'/nix/store/rfm346g073yrry03jna1ixwibdsirsc3-google-fonts-unstable-2022-02-26/share/fonts/truetype/Quicksand[wght].ttf'} % Set sans serif font
\setsansfont{NotoSans-Light.ttf} % Set sans serif font
% \setsansfont{DejaVu Sans, ExtraLight} % Set sans serif font
% \setsansfont{DejaVu Sans ExtraLight}
% [    Extension = .ttf,
%    UprightFont = *,
%       BoldFont = *-Bold,
%     ItalicFont = *-Italic,
% BoldItalicFont = *-BoldItalic,
% ]
% \setmainfont{Latin Modern Math} % Set serifed font
% \setmainfont{DejaVu Math TeX Gyre} % Set serifed font
\setmainfont{XITS} %#/usr/share/texlive/texmf-dist/fonts/opentype
[    Extension = .otf,
   UprightFont = *-Regular,
      BoldFont = *-Bold,
    ItalicFont = *-Italic,
BoldItalicFont = *-BoldItalic,
]
\setmathfont{XITSMath-Regular}
[    Extension = .otf,
      BoldFont = XITSMath-Bold,
]
% \setmathfont{Latin Modern Math} % Set serifed font

% Define light and dark Microsoft blue colours
\definecolor{MSBlue}{rgb}{.204,.353,.541}
\definecolor{MSLightBlue}{rgb}{.31,.506,.741}
\definecolor{PitchBlack}{rgb}{.0,.0,.0}

% Define a new fontfamily for the subsubsection font
% Don't use \fontspec directly to change the font
% \newfontfamily\subsubsectionfont[Color=MSLightBlue]{DejaVu Math TeX Gyre}
% Set formats for each heading level

\titleformat*{\section}{\Large\bfseries\sffamily\color{PitchBlack}}
\titleformat*{\subsection}{\Large\bfseries\sffamily\color{PitchBlack}}
\titleformat*{\subsubsection}{\Large\bfseries\sffamily\color{PitchBlack}}
% \titleformat*{\subsection}{\large\bfseries\sffamily\color{MSLightBlue}}
% \titleformat*{\subsubsection}{\itshape\subsubsectionfont}

%______________________________Multicol http://tex.stackexchange.com/a/3987/1244
\usepackage{multicol}
%\setlength{\columnsep}{20mm}
%\setlength{\columnsep}{7mm}
\setlength{\columnsep}{11mm}
\usepackage{ifthen}
%\let\oldsection\section
%\renewcommand*{\section}[1]{%
%    \ifthenelse{\equal{\@currenvir}{multicols}}{\end{multicols}}{}
%    \ifthenelse{\thesection = 0}{}{\end{multicols}}%
%    \begin{multicols}{2}[\oldsection{#1}]}
%% \let\oldsubsection\subsection
%% \renewcommand*{\subsection}[1]{%
%%     \ifthenelse{\thesubsection = 0}{}{\end{multicols}}%
%%     \begin{multicols}{2}[\oldsubsection{#1}]}
%\let\oldend\enddocument
% \renewcommand*{\enddocument}{\end{multicols}\oldend}

\usepackage[colorlinks=true,linkcolor=black,anchorcolor=black,citecolor=black,filecolor=black,menucolor=black,runcolor=black,urlcolor=black]{hyperref}
%\PassOptionsToPackage{unicode}{hyperref}
\usepackage{graphicx}
\usepackage{tabu}
\usepackage{natbib}
%https://tex.stackexchange.com/a/155838
\usepackage{widetext}
\usepackage{cuted}
\usepackage{lipsum}
\usepackage{titlesec}
\usepackage{xcolor}
\DeclareMathAlphabet{\mathpzc}{OT1}{pzc}{m}{it}

%\setlength\columnseprule{.4pt}

\titlespacing\section{0pt}{10pt plus 4pt minus 2pt}{5pt plus 4pt minus 2pt}
\titlespacing\subsection{0pt}{10pt plus 4pt minus 2pt}{5pt plus 4pt minus 2pt}
\titlespacing\subsubsection{0pt}{10pt plus 4pt minus 2pt}{5pt plus 4pt minus 2pt}
%\usepackage{mathtools}
%\DeclarePairedDelimiter{\paren}{\lparen}{\rparen}
%\usepackage{textcomp}
\usepackage{chessboard}
\usepackage{xskak}
\usepackage{lipsum}
\usepackage{fancyhdr}
\usepackage{wrapfig}
\usepackage{tabularx}
\usepackage{polynom}
\usepackage{esvect}
