\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume-template}[2020/08/07 a single-column resume template with colored icons and links]
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% package imports
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{etoolbox}
\RequirePackage[letterpaper, margin=0.5in]{geometry}
\RequirePackage[colorlinks=true, urlcolor=linkColor]{hyperref}
\RequirePackage{fontawesome}
\RequirePackage{xcolor}
\RequirePackage[T1]{fontenc}
\RequirePackage{enumitem}
\RequirePackage{ifthen}

\usepackage[T1]{fontenc}
\usepackage[usefilenames,
  RMstyle={Text,Semibold},
  SSstyle={Text,Semibold},
  TTstyle={Text,Semibold}]{plex-otf}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% configurations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\raggedright
\pagenumbering{gobble}
\renewcommand*\familydefault{\sfdefault}
\setlist[itemize]{nosep, leftmargin=\bulletLeftMargin}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% font size and spacing definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\nameSize}{35pt}
\newcommand{\nameBaselineskip}{35pt}
\newcommand{\sectionDelimeterSize}{18pt}
\newcommand{\sectionDelimeterBaselineskip}{18pt}
\newcommand{\experienceHeaderSize}{14pt}
\newcommand{\experienceHeaderBaselineskip}{14pt}
\newcommand{\experienceHeaderSmallSize}{12pt}
\newcommand{\experienceHeaderSmallBaselineskip}{12pt}
\newcommand{\bulletTextSize}{12pt}
\newcommand{\bulletTextBaselineskip}{20pt}
\newcommand{\bulletLeftMargin}{0.4in}
\newcommand{\iconSize}{12pt}
\newcommand{\iconBaselineskip}{12pt}

\newcommand{\spaceAfterSectionDelimeter}{0.75ex}
\newcommand{\spaceAfterExperienceHeader}{0.5ex}
\newcommand{\spaceAfterBullets}{1.5ex}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% color definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{mailColor}{RGB}{195, 60, 44}
\definecolor{globeColor}{RGB}{0, 0, 255}
\definecolor{linkedinColor}{RGB}{19, 102, 194}
\definecolor{githubColor}{RGB}{0, 0, 0}
\definecolor{phoneColor}{RGB}{50, 205, 50}
\definecolor{linkColor}{RGB}{51, 102, 187}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% command definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\name}[1]{\begin{center} \fontsize{\nameSize}{\nameBaselineskip}\selectfont \textbf{#1} \end{center}}

\newenvironment{icons}{\begin{center} \fontsize{\iconSize}{\iconBaselineskip}\selectfont \bfseries}{\end{center}}

\newcommand{\coloredMailIcon}{\textcolor{mailColor}{\faEnvelope} \space}
\newcommand{\coloredGlobeIcon}{\textcolor{globeColor}{\faGlobe} \space}
\newcommand{\coloredLinkedinIcon}{\textcolor{linkedinColor}{\faLinkedin} \space}
\newcommand{\coloredGithubIcon}{\textcolor{githubColor}{\faGithub} \space}
\newcommand{\coloredPhoneIcon}{\textcolor{phoneColor}{\faPhone} \space}

\newcommand{\sectionDelimeter}[1]{ \fontsize{\sectionDelimeterSize}{\sectionDelimeterBaselineskip}\selectfont \textbf{#1} \leaders\hbox{\raisebox{0.5ex}{\rule{1pt}{1pt}}}\hfill \vspace{\spaceAfterSectionDelimeter}}

\newcommand{\experienceName}[1]{\fontsize{\experienceHeaderSize}{\experienceHeaderBaselineskip}\selectfont \textbf{#1}}

\newcommand{\experienceDates}[1]{\hfill \fontsize{\experienceHeaderSize}{\experienceHeaderBaselineskip}\selectfont \textbf{#1}}

\newcommand{\experienceHeader}[2]{\experienceName{#1} \experienceDates{#2} \vspace{\spaceAfterExperienceHeader}}

\newcommand{\experienceRole}[1]{\fontsize{\experienceHeaderSmallSize}{\experienceHeaderSmallBaselineskip}\selectfont \textit{#1}}

\newcommand{\experienceLocation}[1]{\hfill \fontsize{\experienceHeaderSmallSize}{\experienceHeaderSmallBaselineskip}\selectfont \textit{#1}}

\newcommand{\experienceHeaderSmall}[2]{\experienceRole{#1} \experienceLocation{#2}}

\newenvironment{bullets}{\begin{itemize} \fontsize{\bulletTextSize}{\bulletTextBaselineskip}\selectfont
}{\end{itemize}\vspace{\spaceAfterBullets}}
