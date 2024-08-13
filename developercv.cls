%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Developer CV
% LaTeX Class
% Version 2.0 (12/10/23)
%
% This class originates from:
% http://www.LaTeXTemplates.com
%
% Authors:
% Omar Roldan
% Based on a template by  Jan Vorisek (jan@vorisek.me)
% Based on a template by Jan Küster (info@jankuester.com)
% Modified for LaTeX Templates by Vel (vel@LaTeXTemplates.com)
%
% License:
% The MIT License (see included LICENSE file)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{developercv}[2023/10/12 Developer CV class v2.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options

\LoadClass{extarticle} % Load the base class

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\setlength{\parindent}{0mm} % Suppress paragraph indentation

\usepackage[hidelinks]{hyperref} % Required for links but hide the default boxes around links

\pagestyle{empty} % No headers or footers

\usepackage{moresize} % Provides more font size commands (\HUGE and \ssmall)
\usepackage{enumitem}
%----------------------------------------------------------------------------------------
%	PAGE LAYOUT
%----------------------------------------------------------------------------------------

\usepackage{geometry} % Required for adjusting page dimensions and margins

\geometry{
	paper=letterpaper, % Paper size, change to letterpaper for US letter size
	top=0.5in, % Top margin
	bottom=0.5in, % Bottom margin
	left=0.5in, % Left margin
	right=0.5in, % Right margin
	headheight=0.5in, % Header height
	footskip=0.25in, % Space from the bottom margin to the baseline of the footer
	headsep=0.25in, % Space from the top margin to the baseline of the header
	% showframe, % Uncomment to show how the type block is set on the page
}

\newcommand\sectionpadding{-2ex}

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------


\usepackage{cmap} % Build character maps for generated PDF files
\usepackage{fontspec}

\usepackage{fourier-otf} % Use the Fourier typesetting system based on the Adobe Utopia font, which is good for both screen and print readability
\setmainfont{Heuristica}
\setsansfont{Inter}
\setmonofont{Fira Code}

% \renewcommand*\familydefault{\sfdefault} % Force the sans-serif version of any font used

%------------------------------------------------

\usepackage{fontawesome} % Required for FontAwesome icons

% Command to output an icon in a black square box with text to the right
\newcommand{\icon}[3]{% The first parameter is the FontAwesome icon name, the second is the box size and the third is the text
	\vcenteredhbox{\colorbox{white}{\makebox(#2, #2){\textcolor{black}{\Large\csname fa#1\endcsname}}}}% Icon and box
	\hspace{0.1cm}% Whitespace
	\vcenteredhbox{\textcolor{black}{#3}}% Text
}

%------------------------------------------------

\usepackage[dvipsnames]{xcolor} % Required for colors

%----------------------------------------------------------------------------------------
%	GRAPHICS DEFINITIONS
%---------------------------------------------------------------------------------------- 

\usepackage{tikz} % Required for creating the plots
\usetikzlibrary{shapes, backgrounds}
\tikzset{x=1cm, y=1cm} % Default tikz units

% Command to vertically centre adjacent content
\newcommand{\vcenteredhbox}[1]{% The only parameter is for the content to centre
    \begingroup%
        \setbox0=\hbox{#1}\parbox{\wd0}{\box0}%
    \endgroup%
}

%----------------------------------------------------------------------------------------
%	CUSTOM SECTIONS
%----------------------------------------------------------------------------------------
\def\Vhrulefill{\leavevmode\leaders\hrule height 0.7ex depth \dimexpr0.4pt-0.7ex\hfill\kern0pt}

% \cvsect: Command to make section title headings
% arg1: section title
\newcommand{\cvsect}[1]{
\parbox[b]{\textwidth}{
    \vspace{\baselineskip} % Whitespace before the section title
    \textcolor{black}{ \MakeUppercase{\textbf{\textsf{#1}}}} \hspace{4pt} \Vhrulefill \\% Section title
    }
}

%----------------------------------------------------------------------------------------
%	ENTRY LIST
%----------------------------------------------------------------------------------------

\usepackage{longtable} % Required for tables that span multiple pages
\setlength{\LTpre}{0pt} % Remove default whitespace before longtable
\setlength{\LTpost}{0pt} % Remove default whitespace after longtable

\setlength{\tabcolsep}{0pt} % No spacing between table columns

% Environment to hold a new list of entries
\newenvironment{entrylist}{
    \begin{longtable}[H]{l l}
}{
    \end{longtable}
}

% \entry: Command to make entry title and content
% arg1: leftmost bolded text
% arg2: center unbolded qualifier
% arg3: right-aligned date
% arg4: entry body
\newcommand{\entry}[4]{
    \parbox[t]{\textwidth}{
    \begin{tabularx}{\textwidth}{l X r}
        \textbf{#1}\hspace{1em} & #2 & \color{gray} #3 \\
    \end{tabularx}
    #4
    \vspace{1ex}
    }
}

% Command to output a separator slash between lists, e.g. '  /  '
\newcommand{\slashsep}{\hspace{3mm}/\hspace{3mm}}
