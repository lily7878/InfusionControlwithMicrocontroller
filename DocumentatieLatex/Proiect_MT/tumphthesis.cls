\NeedsTeXFormat{LaTeX2e}[2007/10/19]
\ProvidesClass{tumphthesis}[2021/09/13 v0.1 The LaTeX template for master's thesis of Technical University of Munich]
\typeout{Document Class `tumphthesis' v0.1 by Sirui Lu (2021/09)}

%%% class options %%%
\newif\ifqst@color\qst@colorfalse
\DeclareOption{color}{\qst@colortrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions\relax

\LoadClass[fontsize=11pt
	,a4paper,oneside
	,fontsize=11pt,footnotes=multiple,chapterprefix=true,appendixprefix=true,numbers=noenddot
	,footinclude=false,open=any
	]{scrbook}


%%% hyperref and url %%%
\RequirePackage[unicode]{hyperref}
\ifqst@color
	\hypersetup{colorlinks=true,citecolor=black,linkcolor=black,urlcolor=black}
\else
	\hypersetup{hidelinks}
\fi
\hypersetup{
	bookmarksnumbered,
	bookmarksopen,
	pdfdisplaydoctitle,
	pdfsubject=ProiectMT,
	pdfcreator=DenisaGorea,
}

\RequirePackage{etoolbox}
\AtBeginDocument{
	\hypersetup{
		pdftitle=\qst@thesistitle,
		pdfauthor=\qst@thesisauthor,
	}
}
\PassOptionsToPackage{hyphens}{url}
\def\UrlFont{\ttfamily}

%%% math symbols %%%
\RequirePackage{amsmath,amssymb,amsfonts,mathrsfs,bm}
\RequirePackage{braket}
\RequirePackage{lmodern}

\DeclareMathOperator*{\argmin}{argmin}
\DeclareMathOperator*{\argmax}{argmax}
\DeclareMathOperator*{\tr}{tr}
\DeclareMathOperator*{\Tr}{Tr}

\newcommand{\rem}[1]{\textcolor{red}{\textbf{[#1]}}}
\newcommand{\note}[2]{{\bf[#1: #2]}}
\newcommand{\todo}[1]{{\color{red}TODO: #1}}
\newcommand{\change}[1]{{\color{blue}#1}}


%%% theorem %%%
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\newtheorem{definition}{Definition}[chapter]
\newtheorem{assumption}[definition]{Assumption}
\newtheorem{theorem}[definition]{Theorem}
\newtheorem{proposition}[definition]{Proposition}
\newtheorem{lemma}[definition]{Lemma}
\newtheorem{corollary}[definition]{Corollary}
\newtheorem{example}[definition]{Example}
\newtheorem{conjecture}[definition]{Conjecture}

%%% bibliographies %%%
\usepackage[numbers]{natbib}
\bibliographystyle{unsrtnat}



%%% header and footer %%%
\RequirePackage{scrlayer-scrpage}

%%% tables %%%
\RequirePackage{booktabs,multirow,longtable,diagbox}


%%% figures %%%
\RequirePackage{graphicx,float}


%%% code listing %%%
\RequirePackage{xcolor}

%%% title page %%%

\newcommand{\MakeFrontCover}{
	\begin{titlepage}
	\begin{center}	
		\begin{center}
			\includegraphics[width=0.4\linewidth]{figures/logo_UTCN_RO_horizontal.pdf}
		\end{center}
		%\Large{\qst@university}\\
		\Large{\qst@universitysecond}\\
		\Large{\qst@speciality}\\
		\vspace{4cm}
		\noindent\rule{\textwidth}{1pt}
		\Huge\textbf{\qst@thesistitle}\\
		\noindent\rule{\textwidth}{1pt}\\
		\bigskip
		{\huge \textbf{\qst@thesisauthor}}\\
		\bigskip
		\Large{Seria A\\Grupa 30122}\\
		\vspace{2.5cm}
		\vfill{\Large \today}
	\end{center}
	\end{titlepage}
	%\newpage
	%\thispagestyle{empty}	
	%\cleardoublepage
	%\thispagestyle{empty}
}




%%% abstract page %%%

\newcommand{\abstractpage}{
	\pdfbookmark{Abstract}{Abstract}
	\newpage
	\setcounter{page}{1}
	
	\begin{flushright}
    	\begin{minipage}[b]{.3\linewidth}
        	\centering
        	\normalfont \textit{\qst@thesisauthor}
    	\end{minipage}
	\end{flushright} 
	

	\vspace*{9pt}
	\begin{center}
		{\LARGE{\textbf{\qst@thesistitle}}}
	\end{center}
	\bigskip
	\centerline{\Large {{ABSTRACT}}}
	\bigskip
	\par
}


\newcommand{\acknowledgments}{
	\cleardoublepage
	\addcontentsline{toc}{chapter}{\protect Acknowledgements}
	\chapter*{Acknowledgements}
	\noindent
}


%%%lista abrevierilor
\newcommand{\abreviations}{
	\cleardoublepage
	\addcontentsline{toc}{chapter}{\protect Glosar}
	\chapter*{Glosar}
}

%%% custom information %%%
\renewcommand{\maketitle}{%
	\MakeFrontCover
	\frontmatter
}




\def\qst@university{Universitatea Tehnic\u{a} din Cluj-Napoca}
\newcommand{\university}[1]{%
	\def\qst@university{#1}
}

\def\qst@universitysecond{Facultatea de Automatic\u{a} \c{s}i Calculatoare}
\newcommand{\universitysecond}[2]{%
	\def\qst@universitysecond{#1}
}

\def\qst@speciality{Automatic\u{a} \c{s}i Informatic\u{a} Aplicat\u{a}}
\newcommand{\institute}[2]{%
	\def\tum@institute{#1}
}



\def\qst@thesistitle{}
\newcommand{\thesistitle}[2]{%
	\def\qst@thesistitle{#1}
}

\def\qst@thesisauthor{}
\newcommand{\thesisauthor}[2]{%
	\def\qst@thesisauthor{#1}
}
% \def\qst@thesissubtitle{}
% \def\qst@thesissubtitleDe{}
% \newcommand{\thesistitle}[4]{%
% 	\def\qst@thesistitle{#1}
% 	\def\qst@thesissubtitle{#2}
% 	\def\qst@thesistitleDe{#3}
% 	\def\qst@thesissubtitleDE{#4}
% }


\def\qst@thesisyear{}
\def\qst@thesismonth{}
\def\qst@thesisday{}
\newcommand{\thesisdate}[3]{%
	\def\qst@thesisyear{#1}
	\def\qst@thesismonth{#2}
	\def\qst@thesisday{#3}
}

