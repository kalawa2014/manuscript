% Classe theseUL, version 1.1, par Jules Desharnais,
%
% Departement d'informatique et de genie logiciel
% Version 1.1 : 2003/03/26
% Version 1 : 2003/02/14.
% Utilise des concepts de la classe these.cls de
% Gilbert Babin, Departement d'informatique, 1997,
% et de la classe memoire.cls de Francois Bouffard,
% Departement de genie electrique et de genie informatique, 2002.
%
%
% Si vous modifiez cette classe (il faut avoir une bonne raison),
% changez aussi son nom et transmettez la classe modifiee avec
% votre memoire ou these.
%
%
%
%============================================================
% LISTE DES OPTIONS QU'ON PEUT PASSER A LA CLASSE theseUL.cls
%------------------------------------------------------------
%   phd         : \maketitle produit la page titre pour un doctorat
%   msc         : \maketitle produit la page title pour une maitrise
%   index       : utilise le package makeidx pour la production d'un index
%   noindex     : le package makeidx n'est pas appeleb
%   hyperref    : utilise le package hyperref pour la production d'hyperliens
%   nohyperref  : le package hyperref n'est pas appele
%   francais    : utilise le package babel avec l'option francais
%   anglais     : utilise le package babel avec l'option english
%                 (equivaut a \usepackage[francais,english]{babel},
%                 meme si l'option francais est aussi passee a theseUL)
%   final       : meme effet que pour la classe report
%   draft       : meme effet que pour la classe report
%   leqno       : meme effet que pour la classe report
%   fleqn       : meme effet que pour la classe report
%   dvips       : passe a la classe report, qui le passe a hyperref
%   pdftex      : passe a la classe report, qui le passe a hyperref
%   textures    : passe a la classe report, qui le passe a hyperref
%   entetes     : des entetes sont formees avec les titres de chapitres
%   noentetes   : l'entete contient seulement le numero de page
%   prelimtm    : l'argument de \chapter* est ajoute a la table des matieres
%   noprelimtm  : l'argument de \chapter* n'est pas ajoute a la table des matieres
%-----------------------------------------------------------------------
% Options par defaut : entetes, msc, francais, index, prelimtm, hyperref
%-----------------------------------------------------------------------
%
%
%
%=======================================================
% LISTE DES COMMANDES DEFINIES PAR LA CLASSE theseUL.cls
%-------------------------------------------------------
% Toutes les commandes qui suivent requierent un argument,
% qui doit etre celui qui est indique ci-dessous :
%
% \PrenomNomMaj : prenom, suivi du nom, en majuscules.
% \PrenomNomMin : prenom, suivi du nom, en minuscules.
% \titre        : titre de la these ou du memoire, en majuscules.
% \soustitre    : sous-titre de la these ou du memoire, s'il y a
%                 un sous titre. En minuscules.
% \programme    : nom du programme.
% \grade        : nom du grade.
% \annee        : annee pour le copyright et l'indication de
%                 l'annee sous le nom de l'universite.
% \mois         : mois a inscrire sous le nom de l'universite.
% \faculte      : nom de la faculte.
%
%
%
%===========================================================
% LISTE DES ENVIRONNEMENTS DEFINIS PAR LA CLASSE theseUL.cls
%-----------------------------------------------------------
%
% dedicace       : pour produire la dedicace.
% epigraphe      : pour produire l'epigraphe, s'il y en a une.
% resumechapitre : pour produire des resumes de chapitre.
%
%
%
%==========================
% Liste des packages requis
%--------------------------
%
%   babel      (standard)
%   color      (standard)
%   hyperref   (standard)
%   makeidx    (standard)
%   report     (standard)
%
% Ces packages utilisent d'autres fichiers.
% Pour connaitre la liste des fichiers utilises, ajoutez la commande
% \listfiles dans le preambule. La liste est alors donnee a la fin du
% fichier .log.
%
%
%
%===========================================================
%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%
%
%\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{theseUL}[2003/02/14]
%
\newif\if@entetes
\newif\if@hyperref
\newif\if@index
\newif\if@msc
\newif\if@prelimtm
\DeclareOption{entetes}{\@entetestrue}
\DeclareOption{noentetes}{\@entetesfalse}
\DeclareOption{msc}{\@msctrue}
\DeclareOption{phd}{\@mscfalse}
\DeclareOption{index}{\@indextrue}
\DeclareOption{noindex}{\@indexfalse}
\DeclareOption{hyperref}{\@hyperreftrue}
\DeclareOption{nohyperref}{\@hyperreffalse}
\DeclareOption{prelimtm}{\@prelimtmtrue}
\DeclareOption{noprelimtm}{\@prelimtmfalse}
\DeclareOption{francais}{\PassOptionsToPackage{francais}{babel}}
\DeclareOption{anglais}{\PassOptionsToPackage{english}{babel}}
\DeclareOption{final}{\PassOptionsToClass{final}{report}}
\DeclareOption{draft}{\PassOptionsToClass{draft}{report}}
\DeclareOption{leqno}{\PassOptionsToClass{leqno}{report}}
\DeclareOption{fleqn}{\PassOptionsToClass{fleqn}{report}}
\DeclareOption{dvips}{\PassOptionsToClass{dvips}{report}}
\DeclareOption{pdftex}{\PassOptionsToClass{pdftex}{report}}
\DeclareOption{textures}{\PassOptionsToClass{textures}{report}}
%
\ExecuteOptions{entetes,msc,francais,index,prelimtm,hyperref}
\ProcessOptions*
%
\LoadClass[a4paper,12pt,oneside,onecolumn,openany]{report}
\RequirePackage{babel}[2001/03/01]
\RequirePackage{color}[1999/02/16]
\if@index
  \RequirePackage{makeidx}[2000/03/29]
  \makeindex
\else
\fi
\if@hyperref
  \RequirePackage[%
    plainpages=false,bookmarks,colorlinks,citecolor=blue,linktocpage]{%
    hyperref}[2002/09/12]
\else
\fi
%
%
%
%==========
% Commandes
%----------
\newcommand{\PrenomNomMaj}[1]{\newcommand{\@PrenomNomMaj}{#1}}
\newcommand{\PrenomNomMin}[1]{\newcommand{\@PrenomNomMin}{#1}}
\newcommand{\titre}[1]{\newcommand{\@titre}{#1}}
\newcommand{\@soustitre}{}
\newcommand{\soustitre}[1]{\renewcommand{\@soustitre}{#1}}
\newcommand{\programme}[1]{\newcommand{\@programme}{#1}}
\newcommand{\grade}[1]{\newcommand{\@grade}{#1}}
\newcommand{\faculte}[1]{\newcommand{\@faculte}{#1}}
\newcommand{\mois}[1]{\newcommand{\@mois}{#1}}
\newcommand{\annee}[1]{\newcommand{\@annee}{#1}}
%
%
\renewcommand{\maketitle}{%
  \if@hyperref
    \hypersetup{%
      pdftitle={\@titre}, 
      pdfauthor={\@PrenomNomMin},
      pdfkeywords={},
    }%
    \if@msc 
      \hypersetup{pdfsubject={M\'emoire de ma\^itrise}}
    \else
      \hypersetup{pdfsubject={Th\`ese de doctorat}}
    \fi
  \else
  \fi
  \thispagestyle{empty}
  \setcounter{page}{1}
  \begin{center}%
    % La FES requiert un interligne et demi entre les lignes.
    % Exception : la page titre, d'ou
    \renewcommand{\baselinestretch}{1}\small\normalsize
    \vspace*{2mm}
    \@PrenomNomMaj\par%
    \vspace*{12mm}%
    {\Large\bf\@titre\par}%
    \vspace*{-4mm}%
    {\large\bf\@soustitre\par}%
    \vfil%
    \if@msc 
        {M\'emoire pr\'esent\'e}\\%
      \else
        {Th\`ese pr\'esent\'ee}\\%
      \fi
    \`a la Facult\'e des \'etudes sup\'erieures de l'Universit\'e Laval\\%
    dans le cadre du programme de
      \if@msc ma\^itrise\else doctorat\fi\
      \@programme\\%
    pour l'obtention du grade de \@grade\par%
    \vfil%
    \@faculte\\%
    UNIVERSIT\'E LAVAL\\%
    \vspace*{19mm}
    \@mois\ \@annee
  \end{center}%
  \vspace*{8mm}%
  \copyright \@PrenomNomMin, \@annee\\%
  \pagebreak%
  \setcounter{footnote}{0}%
  \global\let\maketitle\relax
}
%
%
% Modification de la commande \ps@headings pour
% que les entetes produites par \chapter soient en minuscules
% et pour que seulement le numero de page apparaisse dans
% l'entete si l'option noentetes est en vigueur.
\def\ps@headings{%
  \let\@oddfoot\@empty
  \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
  \let\@mkboth\markboth
    \def\chaptermark##1{%
  \if@entetes 
     \markright{%
       \ifnum \c@secnumdepth >\m@ne
           \@chapapp\ \thechapter. \ %
       \fi
       ##1}
  \else
     \markright{}
  \fi}}
%
%
% Modification de la commande \chapter pour qu'il n'y ait
% pas de numero de page pour la premiere page d'un chapitre
% (normes de la FES). Affecte en meme temps \chapter*.
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
  \thispagestyle{empty}%
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@schapter}
%
%
% Modification de la commande \@schapter pour que
% (1) l'argument de \chapter* soit mis dans la table des matieres
% si l'option prelimtm est en vigueur ;
% (2) une entete formee avec l'argument de \chapter* soit
% produite si l'option entetes est en vigueur.
\def\@schapter#1{%
  \if@twocolumn
    \@topnewpage[\@makeschapterhead{#1}]%
  \else
     % faire croire a hyperref qu'il y a une nouvelle
     % section pour lui faire ajouter une cible d'hyperlien.
     % \phantomsection est definie dans hyperref.sty.
     \if@hyperref\phantomsection\else\fi
    \@makeschapterhead{#1}%
    \@afterheading
%    \if@entetes\markright{#1}\else\markright{}\fi
%    \if@prelimtm\addcontentsline{toc}{chapter}{#1}\fi
  \fi}
%
%
% Modification des commandes \tableofcontents, \listofigures et \listoftables :
% remise de \parskip a zero pour ne pas avoir
% un interligne double entre les entrees.
% Ces commandes n'ont plus a modifier \markright
% (c'est maintenant fait par \chapter*).
\renewcommand\tableofcontents{%
  \setlength{\parskip}{0mm}%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\contentsname}%
  \@starttoc{toc}%
  \if@restonecol\twocolumn\fi
  }
\renewcommand\listoffigures{%
  \setlength{\parskip}{0mm}%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\listfigurename}%
  \@starttoc{lof}%
  \if@restonecol\twocolumn\fi
  }
\renewcommand\listoftables{%
  \setlength{\parskip}{0mm}%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{\listtablename}%
  \@starttoc{lot}%
  \if@restonecol\twocolumn\fi
  }
%
%
% Commande a utiliser apres les parties preliminaires qui sont
% numerotees en chiffres romains. Reinitialise le compteur
% de pages a 1 en numerotation arabe.
\newcommand\corps{%
  \normalsize\setlength{\parskip}{\baselineskip}
  \newpage
  \pagenumbering{arabic}%
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \setcounter{page}{1}}
%
%
%===============
% Environnements
%---------------
\newenvironment{dedicace}{%
  \newpage\thispagestyle{empty}
  \hfill\begin{minipage}{100mm}\begin{flushright}\it}{%
  \end{flushright}\end{minipage}\vfill}
\newenvironment{epigraphe}{%
  \hfill\begin{minipage}{60mm}\begin{flushright}\footnotesize\it}{%
  \end{flushright}\end{minipage}\hspace*{7mm}\vfill}
\newenvironment{resumechapitre}{%
  \begin{quote}
  \renewcommand{\baselinestretch}{1}\small\normalsize
  \setlength{\parskip}{\baselineskip}}{%
  \end{quote}}
%
%
% Modification de l'environnement theindex pour :
% (1) eliminer le numero de page de la premiere page de l'index ;
% (2) ajouter une entree dans le fichier .toc pour qu'une reference
%     a l'index soit ajoutee dans la table des matieres ;
% (3) corriger une erreur d'hyperref qui met le mauvais lien vers
%     l'index dans la table des matieres ;
% (4) modifier \markright selon l'option entetes ou noentetes.
\if@index
  \renewenvironment{theindex}
    {\if@twocolumn
       \@restonecolfalse
     \else
       \@restonecoltrue
     \fi
     \columnseprule \z@
     \columnsep 35\p@
      % \phantomsection sert a faire croire a hyperref qu'il y a une nouvelle
      % section pour lui faire ajouter une cible d'hyperlien.
      % \phantomsection est definie dans hyperref.sty.
     \twocolumn[\if@hyperref\phantomsection\else\fi\@makeschapterhead{\indexname}]%
     \addcontentsline{toc}{chapter}{\indexname}% entree dans la table des matieres
     \if@entetes\markright{\indexname}\else\markright{}\fi
     \thispagestyle{empty}\parindent\z@
     \parskip\z@ \@plus .3\p@\relax
     \let\item\@idxitem}
    {\if@restonecol\onecolumn\else\clearpage\fi}
\else
\fi
%
% 
%
% Modification de l'environnement thebibliography pour
% parce que l'appel a \chapter* de la version originale
% est incompatible avec la nouvelle version de \chapter*.
\renewenvironment{thebibliography}[1]
  {\chapter*{\bibname}%
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
%
%
%
%===============================
% Definition du format des pages
%-------------------------------
% Largeur de la page : 8.5" = 215.9mm
% Avec des marges de 35mm et 25mm, il reste 156mm pour le texte
% 1" = 25.4mm
% Hauteur de la page : 11" = 279.4mm
% La FES veut que le folio soit a 10mm du haut de la page.
\setlength{\oddsidemargin}{35mm}
\setlength{\evensidemargin}{35mm}
\setlength{\voffset}{-1in}
\setlength{\hoffset}{-1in}
\setlength{\textwidth}{156mm}
\setlength{\topmargin}{4mm}
\setlength{\headheight}{10mm}
\setlength{\headsep}{12mm}
\setlength{\topskip}{0mm}
\setlength{\textheight}{228mm}
%
% La FES veut un interligne et demi entre les lignes.
% C'est un critere variable selon les logiciels et la
% taille des polices.
% Critere utilise : 4.5 lignes au pouce
% (au lieu des 5 que donne TeX en 12 points),
% comme au temps des dactylos.
\renewcommand{\baselinestretch}{1.111}\small\normalsize
% Double interligne entre les paragraphes :
\normalsize\setlength{\parskip}{\baselineskip}
%
%
\pagestyle{headings}
\pagenumbering{roman}%
%
% Fin du fichier `theseUL.cls'.
