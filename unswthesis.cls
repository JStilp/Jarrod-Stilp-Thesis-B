% This is an UNOFFICIAL unswthesis class that gives a format of the thesis
% according to the UNSW Mechanical & Manufacturing Engineering thesis guidelines.  
% To use it, say \documentclass{unswthesis} 
% You need to supply file format.tex, where you define the packages you want to use etc.
%
% Written by M. Imran and last modified on 2001/06/18 (as dmathesis.cls)
% No Copyright for this file. Save your time and enjoy it
% Updated by Ian Craig on 2014/10/20 to adapt to UNSW Mechanical Engineering thesis guidelines

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unswthesis}[2001/06/18 Durham Maths thesis class]

% Here the fontsize you can use.
\newcommand\@unswthesisptsize{12pt}
\DeclareOption{12pt}{\renewcommand\@unswthesisptsize{12pt}}
\DeclareOption{11pt}{\renewcommand\@unswthesisptsize{11pt}}
\DeclareOption{10pt}{\renewcommand\@unswthesisptsize{10pt}}

\ProcessOptions

\LoadClass[\@unswthesisptsize,a4paper]{report}

\pagestyle{plain}

% Page setup (Based on UNSW 2014 Mechanical & Manufacturing Engineering thesis guidelines)
\setlength{\voffset}{-1in}  
\setlength{\marginparsep}{0in}  
\setlength{\marginparwidth}{0in}  
\setlength{\marginparpush}{0in}  
\setlength{\hoffset}{-1in}  
\setlength{\oddsidemargin}{4.0cm}  
\setlength{\evensidemargin}{3.0cm} 
\setlength{\textwidth}{14cm}
\setlength{\topmargin}{3cm}
\setlength{\headheight}{15pt}
\setlength{\headsep}{16pt}
\setlength{\textheight}{23cm}
\setlength{\footskip}{18pt}
\renewcommand{\baselinestretch}{1.7} % Line spacing

%  Redefinition  \tableofcontents  in  report.cls
\makeatletter
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{\contentsname}{\contentsname}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }

%  Redefinition \listoffigures in report.cls
\renewcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\listfigurename}{\listfigurename}}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }

% %  Redefinition \listoftables in report.cls
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{\listtablename}{\listtablename}}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }

%  Redefinition thebibliograph in report.cls
\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname
        \@mkboth{\bibname}{\bibname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}


%  Input the format.tex file.
%\input format.tex
 
%\endinput















