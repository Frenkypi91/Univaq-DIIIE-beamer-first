\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{univaqslides}[UNIVAQ slides]

\LoadClass[aspectratio=169]{beamer}

\RequirePackage[utf8]{inputenc}
\RequirePackage{textpos}
\RequirePackage{hyperref}
\RequirePackage{xcolor}

% Logo UNIVAQ e DIIIE
\addtobeamertemplate{frametitle}{}{%
\begin{textblock*}{100mm}(8.5cm,-1.05cm)			% 16:9
	\tiny \centering
	\hspace*{-1cm}
	\includegraphics[height=1cm,width=10.5cm,keepaspectratio]{logos/logonobg} 
\end{textblock*}}

% Numero pagine
\addtobeamertemplate{navigation symbols}{}{%
	\usebeamerfont{footline}%
	\usebeamercolor[fg]{black}%
	\hspace{1em}%
	\insertframenumber/\inserttotalframenumber
}

% Colore UNIVAQ convertiti in fomrato 255
\definecolor{univaqyellow}{RGB}{241, 195, 81}
\definecolor{univaqgray}{RGB}{229, 229, 229}
\definecolor{univaqgreen}{RGB}{0, 128, 0}

% Colore UNIVAQ #F2C451 + Colori per esempi e blocchi
%\definecolor{univaqyellow}{rgb}{0.9453125, 0.765625, 0.31640625}
%\definecolor{univaqgray}{rgb}{0.9, 0.9, 0.9}
%\definecolor{univaqgreen}{rgb}{0.0, 0.5, 0.0}

% Colori per la struttura base
\setbeamercolor{structure}{fg=white}
\setbeamercolor{title}{fg=white}
\setbeamercolor{title in head/foot}{fg=black}
\setbeamercolor{author}{fg=black}
\setbeamercolor{block title}{fg=white, bg=univaqyellow}
\setbeamercolor{block body}{bg=univaqyellow!5}
\setbeamercolor*{block title example}{fg=white,bg=univaqgreen}
\setbeamercolor*{block body example}{bg=univaqgreen!5}

% Slide Iniziale
\newcommand{\univaqtitlepage}{%
	\setbeamertemplate{background}{
		\includegraphics[height=9cm,width=16cm]{logos/back169}
	}
	\begin{frame}{}	\titlepage	\end{frame}
	\setbeamertemplate{background}{}
	\setbeamercolor{structure}{fg=black,bg=univaqyellow}
}

% Slide di inizio sezione
\newcommand{\univaqsectionpage}[1]{%
	\setbeamertemplate{background}{
	\includegraphics[height=9cm,width=16cm]{logos/back169}}
	\section{#1}
	\begin{frame}{}
		\Huge #1
	\end{frame}
	\setbeamertemplate{background}{}
	\setbeamercolor{structure}{fg=black,bg=univaqyellow}
}
