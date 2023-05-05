%%
%% This is file `cumtthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% cumtthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2005-2015 by Xiao Lishun <xiaolishun@cumt.edn.cn>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.0
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.0 or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\NeedsTeXFormat{LaTeX2e}[2004/10/01]
\ProvidesClass{cumtthesis}
[2015/08/04 v2.0 China University of Mining and Technology Thesis Template]
% check the preprint, final, blindreview, check
\newif\ifcumt@preprint\cumt@preprinttrue
\DeclareOption{preprint}{\cumt@preprinttrue\cumt@finalfalse}
\newif\ifcumt@final\cumt@finalfalse
\DeclareOption{final}{\cumt@finaltrue\cumt@preprintfalse}
\newif\ifcumt@blindreview\cumt@blindreviewfalse
\DeclareOption{blindreview}{\cumt@blindreviewtrue}
\newif\ifcumt@check\cumt@checkfalse
\DeclareOption{check}{\cumt@checktrue}
% reference type: authoryear, numbers
\newif\ifcumt@authoryear\cumt@authoryeartrue
\DeclareOption{authoryear}{\global\cumt@authoryeartrue\cumt@numbersfalse}
\newif\ifcumt@numbers\cumt@numbersfalse
\DeclareOption{numbers}{\global\cumt@numberstrue\cumt@authoryearfalse}
% the type of this thesis: Master Degree or PhD
\newif\ifcumt@MD\cumt@MDtrue
\DeclareOption{MD}{\cumt@MDtrue\cumt@PhDfalse}
\newif\ifcumt@PhD\cumt@PhDfalse
\DeclareOption{PhD}{\cumt@PhDtrue\cumt@MDfalse}
% the no-chinese character using new times roman
\DeclareOption{times}{\IfFileExists{txfonts.sty}%
  {\AtEndOfClass{\RequirePackage{txfonts}%
   \gdef\ttdefault{cmtt}%
   \let\iint\relax
   \let\iiint\relax
   \let\iiiint\relax
   \let\idotsint\relax
   \let\openbox\relax}}{\RequirePackage{mathptmx}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ExecuteOptions{preprint,numbers,MD}
\ProcessOptions\relax
%start the thesis
\LoadClass[UTF8,space=auto,autoindent=true,scheme=plain]{ctexbook}%TODO:book
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{ifpdf}
\RequirePackage{ifxetex}
\ifpdf
  \renewcommand{\sfdefault}{phv}
  \renewcommand{\rmdefault}{ptm}
  \renewcommand{\ttdefault}{pcr}
\else
  \ifxetex
    \RequirePackage{fontspec}
    \setmainfont[Ligatures=TeX]{Times New Roman}
  \fi
\fi
\let\latexcontentsline\contentsline
\DeclareGraphicsExtensions{.eps,.mps,.pdf,.jpg,.png,.gif}
% if choice is preprint, all reference is blue
\ifcumt@preprint
  % \xdef\cumt@refcolor{blue}
  \xdef\cumt@refcolor{black}
  \@openrightfalse\overfullrule5\p@
\else
  \ifcumt@final
    \xdef\cumt@refcolor{black}
    \@openrighttrue\overfullrule\z@
  \fi
\fi
\RequirePackage{hyperref}
\hypersetup{%
             unicode=true,%
   bookmarksnumbered=true,%
       bookmarksopen=true,%
  bookmarksopenlevel=3,%
          breaklinks=true,%
          plainpages=false,%
           pdfborder=0 0 0,%
        pdfstartview=FitH,%
          colorlinks=true,%
           linkcolor=\cumt@refcolor,%
            urlcolor=\cumt@refcolor,%
           citecolor=\cumt@refcolor}
\urlstyle{same}
\RequirePackage{array,booktabs,longtable}
\RequirePackage{tabu}
\oddsidemargin=17\p@
\evensidemargin=\oddsidemargin
\topmargin=-17\p@
\headheight=12\p@
\headsep=19\p@
\textheight=674\p@
\textwidth=416\p@
\marginparsep=7\p@
\marginparwidth=98\p@
\footskip=30\p@
\marginparpush=7\p@
\hoffset=\z@
\voffset=\z@
\paperwidth=597\p@
\paperheight=845\p@
\RequirePackage{amsfonts,amssymb,amsmath,amsthm}
\RequirePackage{fancybox}
\RequirePackage{makeidx}
\input{cumtthesis.cfg}
\graphicspath{{figures/}}
\def\ps@cumt@empty{%
    \let\@oddhead\@empty%
    \let\@evenhead\@empty%
    \let\@oddfoot\@empty%
    \let\@evenfoot\@empty}
\def\ps@cumt@plain{%
    \let\@oddhead\@empty%
    \let\@evenhead\@empty%
    \def\@oddfoot{\hfil\zihao{5}\thepage\hfil}%
    \let\@evenfoot=\@oddfoot}
\def\ps@cumt@headings{%
    \def\@oddhead{\vbox to\headheight{%
        \hb@xt@\textwidth{\hfill\zihao{5}\songti\leftmark\hfill}%
        \vskip5\p@\hbox{\vrule width\textwidth height.4\p@ depth\z@}}}
    \def\@evenhead{\vbox to\headheight{%
        \hb@xt@\textwidth{\zihao{5}\songti%
        \hfill\cumt@xuewei\cumt@xueweilunwen@name\hfill}%
        \vskip5\p@\hbox{\vrule width\textwidth height.4\p@ depth\z@}}}
    \def\@oddfoot{\hfil\zihao{5}\thepage\hfil}
    \let\@evenfoot=\@oddfoot}
\renewcommand\frontmatter{%
  \clearpage
  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{cumt@empty}
  \setlength{\baselineskip}{21\p@}
  \def\baselinestretch{1.4}
  \sloppy}
\renewcommand\mainmatter{%
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{cumt@headings}
  \zihao{-4}
  %\setlength{\baselineskip}{20\p@}
  \setlength{\baselineskip}{20pt}
  %\setlength{\parskip}{0\baselineskip}
  %set paragraph skip is 0pt
  \setlength{\parskip}{0pt}
  \def\baselinestretch{1.4}
  \sloppy}
\renewcommand\backmatter{%
  \clearpage
  \@mainmatterfalse
  \pagestyle{cumt@plain}
  \setlength{\baselineskip}{21\p@}
  \def\baselinestretch{1.4}
  \sloppy}
\let\cumt@cleardoublepage\cleardoublepage
\newcommand{\cumt@clearemptydoublepage}{%
  \clearpage{\pagestyle{cumt@empty}\cumt@cleardoublepage}}
\let\cleardoublepage\cumt@clearemptydoublepage
\ifcumt@MD
  \gdef\cumt@xuewei{\cumt@shuoshi@name}
  \xdef\cumt@thesis{Thesis}
\else
  \ifcumt@PhD
    \gdef\cumt@xuewei{\cumt@boshi@name}
    \xdef\cumt@thesis{Dissertation}
  \fi
\fi
\def\CLunWenTiMu{\@ifnextchar[{\cumt@@clunwentimu}{\cumt@@clunwentimu[]}}
    \def\cumt@@clunwentimu[#1]#2{%
        \def\cumt@clunwentimu@width{#1}%
        \gdef\cumt@clunwentimu{#2}%
        \hypersetup{pdftitle={\cumt@clunwentimu}}}
    \def\cumt@clunwentimu@width{0.9}
    \let\cumt@clunwentimu\@empty
    \def\clunwentimu{\cumt@clunwentimu}
\def\ELunWenTiMu{\@ifnextchar[{\cumt@@elunwentimu}{\cumt@@elunwentimu[]}}
    \def\cumt@@elunwentimu[#1]#2{%
        \def\cumt@elunwentimu@width{#1}%
        \gdef\cumt@elunwentimu{#2}%
        \hypersetup{pdfkeywords={\cumt@elunwentimu}}}
    \def\cumt@elunwentimu@width{0.9}
    \let\cumt@elunwentimu\@empty
\def\ZuoZhe#1{\def\cumt@zuozhe{\ifcumt@blindreview***\else#1\hypersetup{pdfauthor={#1}}\fi}}
    \let\cumt@zuozhe\@empty
    \def\zuozhe{\cumt@zuozhe}
\def\DaoShi[#1]#2{\def\cumt@daoshizhicheng{\ifcumt@blindreview ***\else #1\fi}%
    \def\cumt@daoshi{\ifcumt@blindreview***\else #2\fi}}
    \let\cumt@daoshi\@empty
    \def\daoshi{\cumt@daoshi}
    \let\cumt@daoshizhicheng\@empty
\def\DiErDaoShi[#1]#2{\def\cumt@dierdaoshizhicheng{\ifcumt@blindreview***\else#1\fi}%
    \def\cumt@dierdaoshi{\ifcumt@blindreview***\else#2\fi}\def\@sep{,\space}}
    \let\cumt@dierdaoshi\@empty
    \let\@sep\@empty
    \def\dierdaoshi{\cumt@dierdaoshi}
    \let\cumt@dierdaoshizhicheng\@empty
\def\BiYeShiJian#1#2{\def\cumt@biyeshijiannian{#1}\def\cumt@biyeshijianyue{#2}}
    \def\cumt@biyeshijiannian{\the\year}
    \def\cumt@biyeshijianyue{\the\month}
    \def\cumtyear{\zhdigits{\cumt@biyeshijiannian}}
    \def\cumt@month{\zhnumber{\cumt@biyeshijianyue}}
\def\BiYeXueXiao#1{\def\cumt@biyexuexiao{#1}}
    \def\cumt@biyexuexiao{\cumt@biyexuexiao@name}
\newcommand{\cumt@first@titlepage}{
  \begin{figure}
    \includegraphics[scale=0.095]{style/cumt_logo.pdf}\\
  \end{figure}
  \begin{center}
    \vskip2\p@\bgroup\zihao{-2}\songti\cumt@xuewei\cumt@xueweilunwen@name\egroup\par\vskip2.5cm
    \parbox[t]{\cumt@clunwentimu@width\textwidth}{\zihao{2}\heiti\centering\cumt@clunwentimu}\par
    \bigskip\bigskip
    \parbox[t]{\cumt@elunwentimu@width\textwidth}{\zihao{2}\centering\cumt@elunwentimu}\par
  \end{center}
  \vfill
  \begin{table}
    \centering
    \zihao{-3}
%    \begin{tabu}spread 0mm{X[c]X[c]X[l]}
%    	作者 & a & \\
%    	导师 & b & c
%      \makebox[3em][s]{\cumt@zuozhe@name}: & \makebox[3em][s]{\cumt@zuozhe} & \\
%      \makebox[3em][s]{\cumt@daoshi@name}: & \makebox[3em][s]{\cumt@daoshi}
%                                           & \cumt@daoshizhicheng\\
%%      \@ifundefined{cumt@dierdaoshi}{}{ & \makebox[3em][s]{\cumt@dierdaoshi}
%%                                        & \cumt@dierdaoshizhicheng\\}
%    \end{tabu}
	\begin{tabular}{ l c r }
      \makebox[3em][s]{\cumt@zuozhe@name}: & \makebox[3em][s]{\cumt@zuozhe} & \\
      \makebox[3em][s]{\cumt@daoshi@name}: & \makebox[3em][s]{\cumt@daoshi}
                                           & \cumt@daoshizhicheng\\
	\end{tabular}

  \end{table}
  \vfill
  \begin{center}
    \kaishu\zihao{-2}\cumt@biyexuexiao\par
    \cumtyear \cumt@biyeshijiannian@name\cumt@month \cumt@biyeshijianyue@name
  \end{center}
}
% make the cover
\newcommand{\makecover}{
  \phantomsection
  \pdfbookmark[-1]{\cumt@clunwentimu}{clunwentimu}
  \tolerance=10000
  \hbadness=10000
  \vbadness=10000
  \begin{titlepage}
    \pagestyle{cumt@empty}
    \cumt@first@titlepage
    \cumt@coverboxed
%    \cumt@authorization
%    \cumt@authenticate
	 \cumt@declaration
  \end{titlepage}

  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \pagestyle{cumt@plain}\pagenumbering{Roman}
}
\def\cstostr#1{%
  \expandafter\@gobble\detokenize\expandafter{\string#1}}
\def\make@title@cover#1{%
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \pdfbookmark[0]{#1}{\cstostr{#1}}
  \parindent\z@\parbox[t]{\textwidth}{\bfseries\heiti\zihao{-2}\centering #1}
  \par\vskip1.5em\parindent2em}
\newcommand{\cumt@authorization}{
  \make@title@cover{\cumt@authorization@title}
  \zihao{-4}\kaishu\cumt@authorization@neirong
  \vskip40\p@\parindent\z@\songti
  \hb@xt@.66\textwidth{
    \hfill\cumt@zuozheqianming@name\hskip4em\hfill\cumt@daoshiqianming@name}
  \hb@xt@\textwidth{
    \hfill\cumt@qianmingriqi\hfill\cumt@qianmingriqi\hfill}}
\def\ZhongTuFenLeiHao#1{\def\cumt@zhongtufenleihao{#1}}
    \let\cumt@zhongtufenleihao\@empty
\def\UDC#1{\def\cumt@udc{#1}}
    \let\cumt@udc\@empty
\def\XueXiaoDaiMa#1{\def\cumt@xuexiaodaima{#1}}
    \def\cumt@xuexiaodaima{10290}
\def\MiJi#1{\def\cumt@miji{#1}}
    \let\cumt@miji\@empty
\def\XueKeZhuanYe#1{\def\cumt@xuekezhuanye{#1}}
    \let\cumt@xuekezhuanye\@empty
\def\XueWeiLeiBie#1{\def\cumt@xueweileibie{#1}}
    \let\cumt@xueweileibie\@empty
\def\DaBianWeiYuanHuiZhuXi#1{\def\cumt@dabianweiyuanhuizhuxi{#1}}
    \let\cumt@dabianweiyuanhuizhuxi\@empty
\def\PeiYangDanWei#1{\def\cumt@peiyangdanwei{#1}}
    \let\cumt@peiyangdanwei\@empty
\def\YanJiuFangXiang#1{\def\cumt@yanjiufangxiang{#1}}
    \let\cumt@yanjiufangxiang\@empty
\def\PingYueRen#1{\def\cumt@pingyueren{#1}}
    \let\cumt@pingyueren\@empty
\RequirePackage{fontspec}
\usepackage{fontspec}
\setCJKfamilyfont{hwxk}[AutoFakeBold]{stxingka.ttf}
\setCJKfamilyfont{ls}[AutoFakeBold]{STLiti.ttf}          %使用STXingkai华文行楷字体
\newcommand{\huawenxingkai}{\CJKfamily{hwxk}}
\newcommand{\lishu}{\CJKfamily{ls}}
\newcommand\cumt@coverboxed{
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \thisfancypage{}{%
  \setlength{\fboxsep}{\z@}%
  \setlength{\fboxrule}{.6\p@}%
  \setlength{\shadowsize}{\z@}%
  \shadowbox}{}
  \begingroup\centering\zihao{4}\hspace{-1em}
%    \begin{tabu}to.8\linewidth{X[-1,l]X[-1,r]}
%      \begin{tabu}spread 0mm{X[r]X[-1,c]}
%        \cumt@zhongtufenleihao@name: & \cumt@zhongtufenleihao\\
%        \tabucline{2-}
%        UDC: & \cumt@udc\rule{\z@}{.8cm}\\
%        \tabucline{2-}
%      \end{tabu}
%      &
%      \begin{tabu}spread0mm{X[r]X[-1,c]}
%        \cumt@xuexiaodaima@name: & \cumt@xuexiaodaima\\
%        \tabucline{2-}
%        \makebox[4em][s]{\cumt@miji@name:} & \makebox[2.5em][s]{\cumt@miji}\rule{\z@}{.8cm}\\
%        \tabucline{2-}
%      \end{tabu}\\
%    \end{tabu}
  \par\vskip1cm
%  \begin{figure}
%    \centering
%    \includegraphics[width=5.8cm]{cumtxingkai.pdf}\\
%  \end{figure}
  \zihao{1}\huawenxingkai\cumt@biyexuexiao\par\vskip-.5em
  \begingroup\zihao{1}\lishu\cumt@xuewei\cumt@xueweilunwen@name\endgroup\par\vskip1.5cm
%  \begingroup\zihao{1}\cumt@xuewei\cumt@xueweilunwen@name\endgroup\par\vskip1.5cm  
  \begingroup
    \parbox[t]{\cumt@clunwentimu@width\textwidth}{\zihao{2}\heiti\centering\cumt@clunwentimu}\par
    \bigskip\bigskip
    \parbox[t]{\cumt@elunwentimu@width\textwidth}{\zihao{2}\centering\cumt@elunwentimu}\par
  \endgroup
  \vfill\heiti
  
%  \begin{tabu}to\linewidth{X[-1,r]X[-1,l]}
%    \begin{tabu}spread 0mm{X[1,r]X[-1,l]X[-1,l]}
%      \makebox[4em][s]{\cumt@zuozhe@name} & \multicolumn{2}{c}{\cumt@zuozhe}\\
%      \tabucline{2-}
%      \cumt@shenqingxuewei@name &
%      \multicolumn{2}{c}{\cumt@xueweileibie\cumt@xuewei}\rule{\z@}{.8cm}\\
%      \tabucline{2-}
%      \cumt@xuekezhuanye@name &
%        %\multicolumn{2}{c}{\makebox[7em][c]{\zihao 5 \cumt@xuekezhuanye}}\rule{\z@}{.8cm}\\
%        \multicolumn{2}{c}{\makebox[7em][c]{大地测量学}}\rule{\z@}{.8cm}\\        
%      \tabucline{2-}
%      &  \multicolumn{2}{c}{\makebox[7em][c]{与测量工程}}\rule{\z@}{.8cm}\\ 
%      \tabucline{2-}
%      \multicolumn{2}{l}{\cumt@dabianweiyuanhuizhuxi@name} &
%        \makebox[4em][c]{\cumt@dabianweiyuanhuizhuxi}\rule{\z@}{.8cm}\\
%      \tabucline{3-}
%      \tabuphantomline
%    \end{tabu}
%    &
%    \begin{tabu}spread 0mm{X[r]X[c]}
%      \makebox[4em][s]{\cumt@daoshi@name} & \cumt@daoshi
%      \@ifundefined{cumt@dierdaoshi}{}{\@sep\cumt@dierdaoshi}\\
%      \tabucline{2-}
%      \cumt@peiyangdanwei@name & \cumt@peiyangdanwei\rule{\z@}{.8cm}\\
%      \tabucline{2-}
%      \cumt@yanjiufangxiang@name & \makebox[7em][c]{3S技术集成}\rule{\z@}{.8cm}\\
%      \tabucline{2-}
%       & \makebox[7em][c]{及其应用}\rule{\z@}{.8cm} \\
%      \tabucline{2-}
%      \makebox[4em][s]{\cumt@pingyueren@name} & \cumt@pingyueren\rule{\z@}{.8cm}\\
%      \tabucline{2-}
%    \end{tabu}\\
%  \end{tabu}\par
            \Large 姓名\ \ \underline{\makebox[108pt]{\cumt@zuozhe}}\ \ 学号\ \ \underline{\makebox[108pt]{\cumt@xuehao}}\\
	\Large 导师\ \ \underline{\makebox[108pt]{\cumt@daoshi}}\ \ 职称\ \ \underline{\makebox[108pt]{\cumt@daoshizhicheng}}\\
	\Large 学院\ \ \underline{\makebox[108pt]{\cumt@peiyangdanwei}}\ \ 专业\ \ \underline{\makebox[108pt]{\cumt@xuekezhuanye}}\\
  \vfill
  \cumtyear \cumt@biyeshijiannian@name \cumt@month \cumt@biyeshijianyue@name
  \vskip.2cm\null
\endgroup}
\newcommand{\cumt@authenticate}{
  \make@title@cover{\cumt@authenticate@title}
  \bgroup\parindent\z@\parbox[t]{\textwidth}{
     \renewcommand\baselinestretch{2}\parindent2em\kaishu\zihao{4}
     \cumt@authenticate@neirong}\egroup
  \par\vskip40\p@
  \hb@xt@\textwidth{\songti\hfill\cumt@daoshiqianming@name\hskip3.5em}
  \hb@xt@\textwidth{\songti\hfill\cumt@qianmingriqi}
}
\def\acknowledgements{
  \make@title@cover{\cumt@acknowledgements@title}
  \pagestyle{cumt@empty}\zihao{-4}\kaishu\parindent2em}
\def\endacknowledgements{\clearpage}
%abstract in chinese
\def\cabstract{%
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \chapter*{\abstractname}
  \@mkboth{\abstractname}{\abstractname}
  \setcounter{page}{1}
  \zihao{-4}\songti\parindent2em
  \def\CKeyWords##1{\par\bigskip\parindent\z@
    \sbox\@tempboxa{\bfseries\songti\cumt@ckeywords@name:\hskip8\p@}
    \@tempdima=\wd\@tempboxa
    \hangindent\@tempdima\noindent
    \bgroup\bfseries\songti\cumt@ckeywords@name:\space\egroup
    ##1}}
  \def\endcabstract{\clearpage}
% abstract in english
\def\eabstract{
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \phantomsection
  \addcontentsline{toe}{chapter}{Abstract}
  \parindent\z@
  \parbox[t]{\textwidth}{\setmainfont{Arial-Bold.ttf}\zihao{-2}\centering Abstract}\par\vskip1.7em
  % \parbox[t]{\textwidth}{\bfseries\zihao{-2}\centering Abstract}\par\vskip1.7em  
  \@mkboth{Abstract}{Abstract}
  \zihao{-4}\parindent2em
  \def\EKeyWords##1{\par\bigskip\parindent\z@
    \sbox\@tempboxa{\bfseries Keywords:\hskip8\p@}
    \@tempdima=\wd\@tempboxa
    \hangindent\@tempdima\noindent
    \bgroup\bfseries Keywords:\space\egroup
    ##1}}
\def\endeabstract{\clearpage}
\ifcumt@PhD
  \def\exabstract{
    \ifcumt@final\cleardoublepage\else\clearpage\fi
    \phantomsection
    \addcontentsline{toe}{chapter}{Extended Abstract}
    \parindent\z@
    \parbox[t]{\textwidth}{\bfseries\sffamily\zihao{-2}\centering Extended Abstract}\par\vskip1.7em
    \@mkboth{Extended Abstract}{Extended Abstract}
    \zihao{-4}\parindent2em
    \def\ExKeyWords##1{\par\bigskip\parindent\z@
      \sbox\@tempboxa{\bfseries Keywords:\hskip8\p@}
      \@tempdima=\wd\@tempboxa
      \hangindent\@tempdima\noindent
      \bgroup\bfseries Keywords:\space\egroup
      ##1}}
  \def\endexabstract{\clearpage}
\else
  \relax
\fi
% content in chinese
\renewcommand\tableofcontents{
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \chapter*{\contentsname}\vskip-10\p@
  \@mkboth{\contentsname}{\contentsname}\normalsize
  \zihao{-4}
  \@starttoc{toc}}
\def\econtentsname{Contents}
% content in english 
\newcommand\tableofecontents{
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \phantomsection
  \addcontentsline{toe}{chapter}{\econtentsname}
  \parindent\z@
  %\parbox[t]{\textwidth}{\bfseries\sffamily\zihao{-2}\centering\econtentsname}
  \parbox[t]{\textwidth}{\bfseries\zihao{-2}\centering\econtentsname}
  \par\vskip8\p@\parindent2em
  \@mkboth{\econtentsname}{\econtentsname}
  \@starttoc{toe}}
\newcommand\addecontents[2]{%
  \addcontentsline{toe}{#1}{\protect\numberline{\csname the #1\endcsname}#2}}%
\setcounter{tocdepth}{1}
\def\@dotsep{1}
\def\@pnumwidth{2em}
\def\@tocrmarg{3em}
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth
  \else
    \vskip \z@ \@plus .2\p@
    \bgroup
      \leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
      \parindent #2\relax\@afterindenttrue
      \interlinepenalty\@M
      \leavevmode\@tempdima #3\relax
      \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
      {#4}\nobreak
      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
      \nobreak
      \hb@xt@\@pnumwidth{\hfil\normalfont\normalcolor \ifnum 0=#1 \bf\fi #5}%
      \par%
    \egroup
  \fi}
  % chapter title format
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 4bp \@plus\p@
    \setlength\@tempdima{1em}%
    \begingroup
      \parindent\z@ \rightskip\@tocrmarg
      \parfillskip-\@tocrmarg
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      {\bf\songti\boldmath #1}
      %{\bf\heiti\boldmath #1}
      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{\bf.}\mkern \@dotsep mu$}\hfill
      \nobreak
      \hb@xt@\@pnumwidth{\hfil\normalfont\normalcolor\bf #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\renewcommand*\l@section{\@dottedtocline{1}{\z@}{1.8em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{\z@}{2.3em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{\z@}{3em}}
\newcounter{cumt@totalfigures}
\setcounter{cumt@totalfigures}{-1}
\newcounter{cumt@totaltables}
\setcounter{cumt@totaltables}{-1}
% -----------------------------------------
\renewcommand\listoffigures{%
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \chapter*{\listfigurename}%
  \phantomsection
  \addcontentsline{toe}{chapter}{List of Figures}
  \@mkboth{\MakeUppercase\listfigurename}%
          {\MakeUppercase\listfigurename}%
  \bgroup\let\addvspace\@gobble
    \raggedbottom\offinterlineskip\parindent\z@\zihao{5}
    \let\contentsline\latexcontentsline
    \hrule
    \vrule\vrule width \z@ height 1.2\ht\strutbox depth 1.2\dp\strutbox
    \makebox[\dimexpr3cm-.8pt\relax][c]{\bfseries \cumt@figurenumber@name }\vrule
    \parbox{\dimexpr\textwidth-6cm}{\normalbaselines\centering
      {\large\strut}\bfseries \cumt@figurename@name{\large\strut}}\vrule
    \makebox[\dimexpr3cm-.8pt\relax][c]{\bfseries \cumt@pagenumber@name}\vrule
    \hrule
    \@starttoc{lof}%
  \egroup}
% -----------------------------------------
\def\l@figure{\cumt@figure}
\def\cumt@figure#1{\cumt@figurei#1}
\long\def\cumt@figurei\numberline#1#2#3{%
  \vrule\vrule width \z@ height 1.2\ht\strutbox depth 1.2\dp\strutbox
  \makebox[\dimexpr3cm-.8pt\relax][c]{\zihao{5}#1}\vrule
  \parbox{\dimexpr\textwidth-6cm}{\normalbaselines\centering
         {\large\strut}\zihao{5}#2{\large\strut}}\vrule
  \makebox[\dimexpr3cm-.8pt\relax][c]{\zihao{5}#3}\vrule
  \hrule
  \hskip-.4pt \hrule\nobreak}
\renewcommand\listoftables{%
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \chapter*{\listtablename}%
  \phantomsection
  \addcontentsline{toe}{chapter}{List of Tables}
  \@mkboth{\MakeUppercase\listtablename}%
          {\MakeUppercase\listtablename}%
  \bgroup\let\addvspace\@gobble
    \raggedbottom\offinterlineskip\parindent\z@\zihao{5}
    \let\contentsline\latexcontentsline
    \hrule
    \vrule\vrule width \z@ height 1.2\ht\strutbox depth 1.2\dp\strutbox
    \makebox[\dimexpr3cm-.8pt\relax][c]{\bfseries \cumt@tablenumber@name}\vrule
    \parbox{\dimexpr\textwidth-6cm}{\normalbaselines\centering
      {\large\strut}\bfseries \cumt@tablename@name{\large\strut}}\vrule
    \makebox[\dimexpr3cm-.8pt\relax][c]{\bfseries \cumt@pagenumber@name}\vrule
    \hrule
    \@starttoc{lot}%
  \egroup}
\def\l@table{\cumt@table}
\def\cumt@table#1{\cumt@tablei#1}
\long\def\cumt@tablei\numberline#1#2#3{%
  \vrule\vrule width \z@ height 1.2\ht\strutbox depth 1.2\dp\strutbox
  \makebox[\dimexpr3cm-.8pt\relax][c]{\zihao{5}#1}\vrule
  \parbox{\dimexpr\textwidth-6cm}{\normalbaselines\centering
    {\large\strut}\zihao{5}#2{\large\strut}}\vrule
  \makebox[\dimexpr3cm-.8pt\relax][c]{\zihao{5}#3}\vrule
  \hrule
  \hskip-.4pt \hrule\nobreak}
% the figure
\renewcommand\thefigure{\ifnum \c@chapter>\z@ \thechapter--\fi \@arabic\c@figure}
\def\fps@figure{htbp}
%\def\fps@figure{h}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\def\figureename{Figure}
\renewenvironment{figure}
  {\@float{figure}\zihao{5}\addtocounter{cumt@totalfigures}{1}}
  {\end@float}
% the table
\renewcommand\thetable{\ifnum \c@chapter>\z@ \thechapter--\fi \@arabic\c@table}
\def\fps@table{htbp}
%\def\fps@table{h}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\def\tableename{Table}
\renewenvironment{table}
  {\@float{table}\zihao{5}\addtocounter{cumt@totaltables}{1}}
  {\end@float}
\setlength\abovecaptionskip{7\p@}
\setlength\belowcaptionskip{7\p@}
\long\def\@caption#1[#2]#3#4{%
  \par
  \addcontentsline{\csname ext@#1\endcsname}{#1}%
  {\protect\numberline{\csname #1name\endcsname\space%
   \csname the#1\endcsname}{\ignorespaces #2}}%
  \addcontentsline{\csname ext@#1\endcsname}{#1}%
  {\protect\numberline{\csname #1ename\endcsname%
   \space\csname the#1\endcsname}{\ignorespaces #4}}%
  \begingroup
    \@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \zihao{5}\songti\phantomsection
    \@makecaption{#1}{\ignorespaces #3}{\ignorespaces #4}\par
  \endgroup}
\long\def\@makecaption#1#2#3{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\csname #1name\endcsname\nobreakspace%
                  \csname the#1\endcsname\nobreakspace\nobreakspace#2}%
  \newbox\@tempboxb
  \setbox\@tempboxb=\hbox{\csname #1ename\endcsname\nobreakspace%
                          \csname the#1\endcsname\nobreakspace\nobreakspace#3}%
  \ifdim \wd\@tempboxa >\hsize
    \csname #1name\endcsname\nobreakspace%
    \csname the#1\endcsname\nobreakspace\nobreakspace#2\par
  \else
    \global\@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}\par%
  \fi
  \ifdim \wd\@tempboxb>\hsize
    \csname #1ename\endcsname\nobreakspace%
    \csname the#1\endcsname\nobreakspace\nobreakspace#3\par
  \else
    \global\@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxb\hfil}
  \fi
  \vskip\belowcaptionskip}
% the notation
\newenvironment{notation}[1][2.5cm]{
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \chapter*{\cumt@notation@name}
  \phantomsection
  \addcontentsline{toe}{chapter}{List of Variables}
  \@mkboth{\cumt@notation@name}{\cumt@notation@name}
  \noindent\zihao{5}
  \list{}%
    {\vskip-30bp\zihao{-4}\songti
     \renewcommand\makelabel[1]{##1\hfil}
     \labelwidth #1 \labelsep.5cm \itemindent\z@%
     \leftmargin\labelwidth \advance\leftmargin\labelsep%
     \rightmargin\z@ \parsep\z@ \itemsep\z@ \listparindent\z@ \topsep\z@%
    }}
    {\endlist}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter~~#1}{}}
\renewcommand\thechapter       {\@arabic\c@chapter}
\renewcommand\thesection       {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection    {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection {\thesubsection.\@arabic\c@subsubsection}
\renewcommand\theparagraph     {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph  {\theparagraph.\@arabic\c@subparagraph}
\renewcommand\chaptername{Chapter}
\renewcommand\chapter{
  \clearpage
  \phantomsection
  \global\@topnum\z@
  \@afterindenttrue
  \secdef\@chapter\@schapter}
\def\@chapter[#1]#2#3{%
  \ifnum \c@secnumdepth>\m@ne
    \if@mainmatter
      \refstepcounter{chapter}%
      \typeout{\@chapapp\space\thechapter.}%
      \addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}#1}
      \addcontentsline{toe}{chapter}{\protect\numberline{\thechapter}#3}
    \else
      \addcontentsline{toc}{chapter}{#1}
      \addcontentsline{toe}{chapter}{#3}
    \fi
  \else
    \addcontentsline{toc}{chapter}{#1}
    \addcontentsline{toe}{chapter}{#3}
  \fi
  \chaptermark{#1}%
  \@makechapterhead{#2}
  \@makeechapterhead{#3}}
\def\@makechapterhead#1{%
  \bgroup\parindent\z@
    \bf\heiti\boldmath\zihao{-2}
    \ifnum \c@secnumdepth>\m@ne
      \sbox\@tempboxa{\thechapter}
      \@tempdima=\wd\@tempboxa
      \advance\@tempdima by .8em
      \hangindent\@tempdima \thechapter{\hskip.8em}#1
    \fi
    \par\nobreak
  \egroup}
\def\@makeechapterhead#1{%
  \bgroup\parindent\z@
    \bf\boldmath\zihao{-2}
    \ifnum \c@secnumdepth>\m@ne
      \setbox0=\hbox{\thechapter}\dimen0=\wd0
      \advance\dimen0 by .8em
      \hangindent\dimen0 \thechapter{\hskip.8em}#1
    \fi
    \par\nobreak
    \vskip .5em \@plus .2ex \@minus .5em
  \egroup}
\def\@schapter#1{%
  \addcontentsline{toc}{chapter}{#1}
  \@makeschapterhead{#1}
  \@afterheading}
\def\@makeschapterhead#1{%
  \bgroup\parindent\z@\raggedright
   \centering\bfseries\heiti\boldmath\zihao{-2}
   \interlinepenalty\@M
   #1\par\nobreak\vskip1em
  \egroup}
\renewcommand\section{
  \phantomsection
  \global\@topnum\@ne
  \@afterindenttrue
  \secdef\@section\@ssection}
\def\@section[#1]#2#3{%
  \ifnum \c@secnumdepth>\z@
    \if@mainmatter
      \refstepcounter{section}%
      \typeout{\thesection.}%
      \addcontentsline{toc}{section}{\protect\numberline{\thesection}#1}
      \addcontentsline{toe}{section}{\protect\numberline{\thesection}#3}
    \else
      \addcontentsline{toc}{section}{#1}%
      \addcontentsline{toe}{section}{#3}%
    \fi
  \else
    \addcontentsline{toc}{section}{#1}%
    \addcontentsline{toe}{section}{#3}%
  \fi
  \sectionmark{#1}%
  \@makesectionhead{#2}{#3}}
\def\@makesectionhead#1#2{%
  \bgroup\vskip.5em \@plus .2ex \@minus .2ex
   \parindent\z@\zihao{-3}\bf\boldmath
   \ifnum \c@secnumdepth>\z@
     \sbox\@tempboxa{\thesection}
     \@tempdima=\wd\@tempboxa
     \advance\@tempdima by .8em
     \hangindent\@tempdima \thesection{\hskip.8em}#1~(#2)
   \fi\par\nobreak\vskip.5em \@plus .2ex \@minus .2ex
  \egroup}
\def\@ssection#1{%
  \@makessectionhead{#1}
  \@afterheading}
\def\@makessectionhead#1{%
  {\parindent\z@
   \bf\boldmath\zihao{-3}
   \interlinepenalty\@M
   \vskip.5em #1\par\vskip5\p@\nobreak}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                         {.5em \@plus .2ex \@minus .2ex}%
                         {.5em \@plus .4ex}%
                         {\zihao{4}\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                            {.5em \@plus .2ex \@minus .2ex}%
                            {.5em \@plus .4ex}%
                            {\zihao{4}}}
\setlength  \leftmargini{3.8em}
\setlength  \labelsep   {2ex}
\setlength  \labelwidth {\leftmargini}
\addtolength\labelwidth {-\labelsep}
\addtolength\labelwidth {-\itemindent}
\setlength\partopsep{\z@ \@plus 1\p@ \@minus 1\p@}
\def\@listi{\leftmargin\leftmargini
            \parsep 2\z@ \@plus2\p@ \@minus\p@
            \topsep 8\p@ \@plus2\p@ \@minus4\p@
            \itemsep2\p@ \@plus2\p@ \@minus\p@}
\let\@listI\@listi
\@listi
\setlength\leftmarginii {2em}
\def\@listii{\leftmargin\leftmarginii
             \labelwidth\leftmarginii
             \advance\labelwidth-\labelsep
             \topsep 4.5\p@ \@plus2\p@ \@minus\p@
             \parsep 1\z@ \@plus2\p@ \@minus\p@
             \itemsep1\p@ \@plus2\p@ \@minus\p@}
\renewenvironment{description}
  {\list{}{\labelwidth\z@ \itemindent-.45\leftmargin
   \let\makelabel\descriptionlabel}}
  {\endlist}
\ifcumt@authoryear
  \xdef\cumt@biboptions{square,super,sort}
  %\xdef\cumt@biboptions{square,numbers,sort}
  \AtEndOfClass{
  \def\cumt@authoryear@format{
    \advance\leftmargin\bibindent
    \itemindent -\bibindent
    \listparindent \itemindent
    \parsep5\p@}}
\else
  \ifcumt@numbers
    %\xdef\cumt@biboptions{square,numbers,sort&compress}
    \xdef\cumt@biboptions{square,super,sort&compress}
    \let\cumt@authoryear@format\@empty
  \fi
\fi
%\@ifundefined{cumt@biboptions}{\xdef\cumt@biboptions{square,numbers,sort}}{}
\@ifundefined{cumt@biboptions}{\xdef\cumt@biboptions{square,super,sort}}{}
\InputIfFileExists{\jobname.spl}{}{}
\RequirePackage[\cumt@biboptions]{natbib}
\newwrite\splwrite
\immediate\openout\splwrite=\jobname.spl
\def\biboptions#1{\def\next{#1}\immediate\write\splwrite{%
   \string\g@addto@macro\string\@biboptions{%
    ,\expandafter\strip@prefix\meaning\next}}}
\renewenvironment{thebibliography}[1]
  {\clearpage
   \chapter*{\bibname}\vskip-6\p@%
   \phantomsection
   \addcontentsline{toe}{chapter}{References}
   \zihao{5}\normalfont
   \list{\@biblabel{\@arabic\c@enumiv}}%
        {\settowidth\labelwidth{\@biblabel{#1}}%
         \leftmargin\labelwidth
         \advance\leftmargin\labelsep
         \parsep\z@ \itemsep\z@ \topsep\z@%
         \cumt@authoryear@format
         \usecounter{enumiv}%
         \let\p@enumiv\@empty
         \renewcommand\theenumiv{\@arabic\c@enumiv}
        }%
   \sloppy
   \clubpenalty4000
   \@clubpenalty \clubpenalty
   \widowpenalty4000%
   \sfcode`\.\@m}
   {\def\@noitemerr
     {\@latex@warning{Empty `thebibliography' environment}}%
   \endlist
    \label{totalpage}
    \addtocounter{cumt@totaltables}{-1}
    \refstepcounter{cumt@totaltables}
    \label{totaltable}
    \addtocounter{cumt@totalfigures}{-1}
    \refstepcounter{cumt@totalfigures}
    \label{totalfigure}
    \addtocounter{NAT@ctr}{-1}
    \refstepcounter{NAT@ctr}
    \label{totalbib}
   }
\newcount\c@appendix
\c@appendix=0
\def\appendix#1{%
  \advance\c@appendix by1
  \def\thechapter{\@Alph\c@appendix}
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \bgroup\parindent\z@\centerline{\bf\heiti\zihao{-2}
   \appendixname{~\@Alph\c@appendix}}\egroup
  \par\vskip.3ex\centerline{\songti\zihao{-4}#1}
  \par\nobreak\vskip .5em \@plus .2ex \@minus .5em
}
\newenvironment{resume}{%
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \chapter*{\cumt@resume@title}\vskip-6\p@
  \phantomsection
  \addcontentsline{toe}{chapter}{Author's Resume}
  \@mkboth{\cumt@resume@title}{\cumt@resume@title}
  \zihao{5}\setlength\leftmargini{3.2em}
  \setlength\labelsep{1ex}}{}
\newcommand{\cumt@declaration}{
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \chapter*{\cumt@declaration@title}\vskip-6\p@%
  \phantomsection
  \addcontentsline{toe}{chapter}{Declaration of \cumt@thesis{} Originality}
  {\zihao{-4}\kaishu\parindent2em\cumt@declaration@neirong}
  \par\vskip40\p@
  \hb@xt@\textwidth{\songti\hfill\cumt@xueweilunwenzuozheqianming@name\hskip4em}
  \hb@xt@\textwidth{\songti\hfill\cumt@qianmingriqi}
}
\newcommand{\makebackcover}{
  \tolerance=10000
  \hbadness=10000
  \vbadness=10000
%  \cumt@declaration
  \cumt@datacollection}
\def\GuanJianCi#1{\def\cumt@guanjianci{#1}}
    \let\cumt@guanjianci\@empty
\def\LunWenZiZhu#1{\def\cumt@lunwenzizhu{#1}}
    \let\cumt@lunwenzizhu\@empty
\def\XueWeiShouYuDanWeiMingCheng#1{\def\cumt@xueweishouyudanweimingcheng{#1}}
    \def\cumt@xueweishouyudanweimingcheng{\cumt@biyexuexiao}
\def\XueWeiShouYuDanWeiDaiMa#1{\def\cumt@xueweishouyudanweidaima{#1}}
    \def\cumt@xueweishouyudanweidaima{\cumt@xuexiaodaima}
\def\XueWeiJiBie#1{\def\cumt@xueweijibie{#1}}
    \def\cumt@xueweijibie{\cumt@xuewei}
\def\LunWenTiMing#1{\def\cumt@lunwentiming{#1}}
    \def\cumt@lunwentiming{\cumt@clunwentimu}
\def\BingLieTiMing#1{\def\cumt@binglietiming{#1}}
    \let\cumt@binglietiming\@empty
\def\LunWenYuZhong#1{\def\cumt@lunwenyuzhong{#1}}
    \let\cumt@lunwenyuzhong\@empty
\def\XueHao#1{\def\cumt@xuehao{#1}}
    \let\cumt@xuehao\@empty
\def\PeiYangDanWeiMingCheng#1{\def\cumt@peiyangdanweimingcheng{#1}}
    \def\cumt@peiyangdanweimingcheng{\cumt@peiyangdanwei}
\def\PeiYangDanWeiDaiMa#1{\def\cumt@peiyangdanweidaima{#1}}
    \let\cumt@peiyangdanweidaima\@empty
\def\PeiYangDanWeiDiZhi#1{\def\cumt@peiyangdanweidizhi{#1}}
    \let\cumt@peiyangdanweidizhi\@empty
\def\YouBian#1{\def\cumt@youbian{#1}}
    \def\cumt@youbian{221116}
\def\XueZhi#1{\def\cumt@xuezhi{#1}}
    \let\cumt@xuezhi\@empty
\def\XueWeiShouYuNian#1{\def\cumt@xueweishouyunian{#1}}
    \def\cumt@xueweishouyunian{\cumt@biyeshijiannian}
\def\LunWenTiJiaoRiQi#1{\def\cumt@lunwentijiaoriqi{#1}}
    \def\cumt@lunwentijiaoriqi{\cumt@biyeshijiannian{} \cumt@biyeshijiannian@name{}
        \cumt@biyeshijianyue{} \cumt@biyeshijianyue@name}
\def\DaBianWeiYuanHuiChengYuan#1{\def\cumt@dabianweiyuanhuichengyuan{#1}}
    \let\cumt@dabianweiyuanhuichengyuan\@empty
\def\DianZiLunWenChuBanZhe#1{\def\cumt@dianzilunwenchubanzhe{#1}}
    \let\cumt@dianzilunwenchubanzhe\@empty
\def\DianZiLunWenChuBanDi#1{\def\cumt@dianzilunwenchubandi{#1}}
    \let\cumt@dianzilunwenchubandi\@empty
\def\QuanXianShengMing#1{\def\cumt@quanxianshengming{#1}}
    \let\cumt@quanxianshengming\@empty
\newcommand{\cumt@datacollection}{
  \ifcumt@final\cleardoublepage\else\clearpage\fi
  \chapter*{\cumt@datacollection@title}
  \phantomsection
  \addcontentsline{toe}{chapter}{\cumt@thesis{} Data Collection}
  \bgroup
  \centering\parindent\z@\zihao{5}
  \setlength{\tabcolsep}{\z@}
\tabulinesep=0mm
%\begin{tabu}to\linewidth{|X[c,m]|}
%  \hline
%  \tabulinesep=3mm
%  \begin{tabu}to\linewidth{X[-2,c,m]|X[1,c,m]|X[1,c,m]|X[1,c,m]|X[1,c,m]}%[2pt,white][1.5pt,white]
%    \rowfont\bf
%    \cumt@ckeywords@name* & \cumt@miji@name* & \cumt@zhongtufenleihao@name*
%    & UDC & \cumt@lunwenzizhu@name\\
%    \hline
%    \cumt@guanjianci & \cumt@miji & \cumt@zhongtufenleihao & \cumt@udc
%    & \cumt@lunwenzizhu\\
%  \end{tabu}\\
%  \hline
%  \tabulinesep=3mm
%  \begin{tabu}to\linewidth{X[1,c,m]|X[1,c,m]|X[1,c,m]|X[1,c,m]}
%    \rowfont\bf
%    \cumt@xueweishouyudanweimingcheng@name* & \cumt@xueweishouyudanweidaima@name*
%    & \cumt@xueweileibie@name* & \cumt@xueweijibie@name*\\
%    \hline
%    \cumt@xueweishouyudanweimingcheng & \cumt@xueweishouyudanweidaima
%    & \cumt@xueweileibie & \cumt@xueweijibie\\
%  \end{tabu}\\
%  \hline
%  \tabulinesep=3mm
%  \begin{tabu}to\linewidth{X[2,c,m]|X[2,c,m]|X[1,c,m]}%|[2pt,white]|[1.5pt,white]
%    \rowfont\bf
%    \cumt@lunwentiming@name* & \cumt@binglietiming@name*
%    & \cumt@lunwenyuzhong@name*\\
%    \hline
%    \cumt@lunwentiming & \cumt@binglietiming & \cumt@lunwenyuzhong\\
%  \end{tabu}\\
%  \hline
%  \tabulinesep=3mm
%  \begin{tabu}to\linewidth{X[1,c,m]|X[1,c,m]|X[1,c,m]|X[1,c,m]}
%     {\bf\cumt@zuozhexingming@name*} & \cumt@zuozhe & {\bf\cumt@xuehao@name*}
%     & \cumt@xuehao\\
%     \hline
%     \rowfont\bf
%     \cumt@peiyangdanweimingcheng@name* & \cumt@peiyangdanweidaima@name*
%     & \cumt@peiyangdanweidizhi@name & \cumt@youbian@name\\
%     \hline
%     \cumt@peiyangdanweimingcheng & \cumt@peiyangdanweidaima
%     & \cumt@peiyangdanweidizhi & \cumt@youbian\\
%     \hline
%     \rowfont\bf
%     \cumt@xuekezhuanye@name* & \cumt@yanjiufangxiang@name* & \cumt@xuezhi@name*
%     & \cumt@xueweishouyunian@name*\\
%     \hline
%     \cumt@xuekezhuanye & \cumt@yanjiufangxiang & \cumt@xuezhi
%     & \cumt@xueweishouyunian{} \cumt@biyeshijiannian@name\\
%  \end{tabu}\\
%  \hline
%  \tabulinesep=3mm
%  \begin{tabu}to\linewidth{X[1,c,m]|X[2,c,m]}
%    {\bf\cumt@lunwentijiaoriqi@name*} & \cumt@lunwentijiaoriqi\\
%  \end{tabu}\\
%  \hline
%  \tabulinesep=3mm
%  \begin{tabu}to\linewidth{X[1,c,m]|X[1,c,m]|X[1,c,m]|X[1,c,m]}
%    {\bf\cumt@daoshixingming@name*} & \cumt@daoshi & {\bf\cumt@zhicheng@name*}
%    & \cumt@daoshizhicheng\\
%  \end{tabu}\\
%  \hline
%  \tabulinesep=3mm
%  \begin{tabu}to\linewidth{X[1,c,m]|X[1,c,m]|X[1,c,m]}
%    \rowfont\bf
%    \cumt@pingyueren@name & \cumt@dabianweiyuanhuizhuxi@name*
%    & \cumt@dabianweiyuanhuichengyuan@name* \\
%  \end{tabu}\\
%  \hline
%  \tabulinesep=3mm
%  \begin{tabu}to\linewidth{X[1,c,m]|X[1,c,m]|X[1,c,m]}
%    \cumt@pingyueren & \cumt@dabianweiyuanhuizhuxi
%    & \cumt@dabianweiyuanhuichengyuan\\
%  \end{tabu}\\
%  \hline
%  \tabulinesep=2mm
%  \begin{tabu}to\linewidth{X[-1,m]X[l,m]}%|[2pt,white]|[2pt,white]|[2pt,white]
%    ~{\bf\cumt@dianzibanlunwentijiaogeshi@name}~ &
%    ~\bf\songti \cumt@wenben@name~(~\checkmark~)
%    ~\cumt@tuxiang@name~(~\textcolor[rgb]{1.00,1.00,1.00}{\checkmark}~)
%    ~\cumt@shipin@name~(~\textcolor[rgb]{1.00,1.00,1.00}{\checkmark}~)
%    ~\cumt@yinpin@name~(~\textcolor[rgb]{1.00,1.00,1.00}{\checkmark}~)
%    ~\cumt@duomeiti@name~(~\textcolor[rgb]{1.00,1.00,1.00}{\checkmark}~)
%    ~\cumt@qita@name~(~\textcolor[rgb]{1.00,1.00,1.00}{\checkmark}~)\\
%  \end{tabu}\\
%  \tabulinesep=2mm
%  \begin{tabu}to\linewidth{X[l,m]}%|[2pt,white]
%    \rowfont\bf
%    ~\cumt@tuijiangeshi@name: application msword; application pdf\\
%  \end{tabu}\\
%  \hline
%  \tabulinesep=3mm
%  \begin{tabu}to\linewidth{X[1,c,m]|X[1,c,m]|X[1,c,m]}
%    \rowfont\bf
%    \cumt@dianzibanlunwenchubanzhe@name & \cumt@dianzibanlunwenchubandi@name
%    & \cumt@quanxianshengming@name\\
%  \end{tabu}\\
%  \hline
%  \extrarowsep=2mm
%  \begin{tabu}to\linewidth{X[1,c,m]|X[1,c,m]|X[1,c,m]}
%    \cumt@dianzilunwenchubanzhe & \cumt@dianzilunwenchubandi
%    & \cumt@quanxianshengming \\
%  \end{tabu}\\
%  \hline
%  \tabulinesep=3mm
%  \begin{tabu}to\linewidth{X[1,c,m]|X[2,c,m]}
%    {\bf\cumt@lunwenzongyeshu@name*} & \pageref{totalpage}\\
%  \end{tabu}\\
%  \hline
%  \tabulinesep=3mm
%  \begin{tabu}to\linewidth{X[l,m]}%|[2pt,white]
%    \rowfont\bf
%    ~\cumt@beizhu@name.\\
%  \end{tabu}\\
%  \hline
%\end{tabu}
\egroup}
\newtheoremstyle{cumt}                % <name>
     {10\p@ \@minus 4\p@ \@plus 2\p@} % <Space above>
     {10\p@ \@minus 4\p@ \@plus 2\p@} % <Space below>
     {\kaishu}                        % <Body font>
     {}                               % <Indent amounti>
     {\bf}                            % <Theorem head font>
     {.}                              % <Punctuation after theorem head>
     {.6em}                           % <Space after theorem head>
     {}                               % <Theorem head spec (can be left empty)>
\theoremstyle{cumt}
\newtheorem{definition}{\cumt@def@name~}[chapter]
\newtheorem{theorem}[definition]{\cumt@thm@name~}
\newtheorem{lemma}[definition]{\cumt@lem@name~}
\newtheorem{corollary}[definition]{\cumt@cly@name~}
\newtheorem{proposition}[definition]{\cumt@pro@name~}
\newtheorem{remark}[definition]{\cumt@rem@name~}
\newtheorem{example}[definition]{\cumt@exm@name~}
\allowdisplaybreaks[4]
\renewcommand{\textfraction}{.15}
\renewcommand{\topfraction}{.85}
\renewcommand{\bottomfraction}{.65}
\renewcommand{\floatpagefraction}{.6}
\setlength{\floatsep}{10\p@ \@plus 3\p@ \@minus 2\p@}
\setlength{\textfloatsep}{10\p@ \@plus 3\p@ \@minus 2\p@}
\setlength{\intextsep}{10\p@ \@plus 3\p@ \@minus 2\p@}
\AtBeginDocument{
   \hypersetup{%
     pdfsubject={\cumt@xuewei\cumt@xueweilunwen@name},
     pdfproducer={cumtthesis.cls by Xiao Lishun}}}
\ifcumt@check
  \let\makecover\relax
  \let\tableofcontents\relax
  \let\tableofecontents\relax
  \let\listoffigures\relax
  \let\listoftables\relax
  \let\makebackcover\relax
  \RequirePackage{environ}
  \RenewEnviron{acknowledgements}{}
  \RenewEnviron{cabstract}{}
  \RenewEnviron{eabstract}{}
  \RenewEnviron{exabstract}{}
  \RenewEnviron{notation}{}
  \RenewEnviron{resume}{}
  \RenewEnviron{thebibliography}{}
\fi
\endinput
%%
%% End of file `cumtthesis.cls'.
