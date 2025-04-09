%%
%%  This is file `tehran-thesis.cls',
%%  It is a modification of IUST-Thesis by Mahmood Amintoosi
%%  which itself is a change of Tabriz_thesis by Vahid Damanafshan
%%  which itself is a change of xepersian-thesis by Vafa Khalighi
%%
%%  Author: Sina Momken, sina.momken@gmail.com
%%	Base author: Mahmood Amintoosi, m.amintoosi@gmail.com
%%  https://github.com/sinamomken/tehran-thesis
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tehran-thesis}
              [05/09/2017 v0.1
 Persian thesis document class in XeLaTeX for University of Tehran projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,12pt]{book}
\def\university#1{\gdef\@university{#1}}
\def\college#1{\gdef\@college{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\firstsupervisorrank}[1]{\def\@firstsupervisorrank{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\secondsupervisorrank}[1]{\def\@secondsupervisorrank{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\firstadvisorrank}[1]{\def\@firstadvisorrank{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\newcommand{\secondadvisorrank}[1]{\def\@secondadvisorrank{#1}}
\newcommand{\internaljudge}[1]{\def\@internaljudge{#1}}
\newcommand{\internaljudgerank}[1]{\def\@internaljudgerank{#1}}
\newcommand{\externaljudge}[1]{\def\@externaljudge{#1}}
\newcommand{\externaljudgerank}[1]{\def\@externaljudgerank{#1}}
\newcommand{\externaljudgeuniversity}[1]{\def\@externaljudgeuniversity{#1}}
\newcommand{\graduatedeputy}[1]{\def\@graduatedeputy{#1}}
\newcommand{\graduatedeputyrank}[1]{\def\@graduatedeputyrank{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\long\def\acknowledgement#1{\gdef\@acknowledgement{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\long\def\fa-abstract#1{\gdef\@fa-abstract{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\projectLabel#1{\gdef\@projectLabel{#1}}
\def\studentID#1{\gdef\@studentID{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
\def\latincollege#1{\gdef\@latincollege{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latindepartment#1{\gdef\@latindepartment{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\en-abstract#1{\gdef\@en-abstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\newif\if@irfonts
\@irfontsfalse
\DeclareOption{irfonts}{\@irfontstrue}
\ProcessOptions

\ifx\@projectLabel\undefined%
{
\if@mscthesis
{\projectLabel{پایان‌نامه}}
\else
 \if@bscthesis
 {\projectLabel{پروژه}}
 \else
{\projectLabel{رساله}}
\fi\fi
}\fi

\ifx\@degree\undefined%
{
\if@mscthesis
\degree{کارشناسی }
\else
\if@bscthesis
\degree{کارشناسی}
\else
\degree{دکتری}
\fi\fi
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% جلد زرکوب به فارسی (بدون اساتید مشاور)
\newcommand{\coverPage}{\begin{titlepage}
%\topmargin=-30pt
\vspace{-10mm}
% دستورات دوآرمه
\begin{latin}
\hskip-1cm
\makebox[\textwidth+2cm][c]{




\begin{minipage}{\textwidth - 8cm}
\centering 
\includegraphics[height=4cm]{logo} 
	\begin{center}
	\begin{persian}
		\begin{onehalfspacing}
		{\normalsize \bf \@university \\}
		{\normalsize \bf \@college \\}
		{\large\bfseries\@faculty \\}
		{\large\bfseries\@department}
		\end{onehalfspacing}
	\end{persian}
	\end{center}
\end{minipage}

}
\end{latin}
% دستورات تک‌آرمه
%\centerline{{\includegraphics[width=5cm]{logo}}}
%\centerline{\bf \@university}
%\centerline{\large\bfseries\@faculty}
% بعد از آرم‌ها
\centering
\vskip 1.5cm
{\titlefont\bfseries \@title}\par
\vskip 5mm
\if@bscthesis 
	{\large\bfseries{پروژهٔ کارشناسی \@subject}
	\ifx\@field\undefined%
		\relax
	\else
		\@field
	\fi
	}
\else
	{\large\bfseries \@projectLabel\ \writtenfor
	\@degree{} 
	}
	{\large\bfseries{در رشتهٔ \@subject}}
	\vskip .2cm
	\centerline{\large \bfseries%
	\@field}
\fi	
\vskip 1cm
\par
{\Large\bfseries{\@name\ \ \@surname}}
\par
\vskip 1cm
\large
{
\ifx\@firstsupervisor\undefined%
	\ifx\@secondsupervisor\undefined%
	\else
	\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما
{\Large\bfseries\par
\@firstsupervisor}
\else
\large
اساتید راهنما
\par
{\Large\bfseries \@firstsupervisor{} و \@secondsupervisor}
\fi\fi}\vskip 6mm
\vfill
{\large \@thesisdate}
\vfill
\end{titlepage}%
} % end of coverPage
%% چکیده فارسی
\newcommand\abstractPage{
	\cleardoublepage

	\section*{چکیده}
	% \addcontentsline{toc}{section}{چکیده}
	\@fa-abstract
	\par\noindent
	\paragraph{واژگان کلیدی}
	\@keywords
}

% \def\latinabstract{
% %% Latin abstract Page
% \cleardoublepage\newpage
% \thispagestyle{empty}
% ~
% \newpage
% \thispagestyle{empty}
% \section*{Abstract}
% % \addcontentsline{toc}{section}{چکیده}
% \@en-abstract
% \par
% \noindent
% \paragraph{Keywords}
% \@latinkeywords
% }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% Latin Abstract and Title pages

\font\supervisorfont=cmbxti10
\def\onvan{عنوان}
\def\writtenfor{برای دریافت درجهٔ }
\def\by{پژوهشگر}
\def\latinby{By:}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\AtBeginDocument{
\makeatletter
% تعیین مشخصات فایل PDF
\hypersetup{
pdftitle={\@latintitle},
pdfauthor={\@latinname \@latinsurname},
pdfsubject={Thesis in \@latinsubject},
pdfkeywords={\@latinkeywords},
pdfdirection={R2L}
}
\makeatother
}