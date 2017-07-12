;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;cn-simple
(add-to-list 'org-latex-classes
             '("cn-simple"
               "\\documentclass[10pt,a4paper]{article}
\\usepackage{graphicx}
\\usepackage{xcolor}
\\usepackage[top=2.5cm, bottom=2.5cm, left=2cm, right=2cm]{geometry}    % 控制页边距                             
\\usepackage{xeCJK}
\\usepackage{lmodern}
\\usepackage{verbatim}
\\usepackage{fixltx2e}
\\usepackage{longtable}
\\usepackage[font=small,labelfont=bf]{caption}
\\usepackage{float}
\\usepackage{tikz}
\\usepackage{wrapfig}
\\usepackage{caption}
\\usepackage{soul}
\\usepackage{textcomp}
\\usepackage{listings}
\\usepackage{enumerate}
\\usepackage{algorithm}
\\usepackage{algorithmic}
\\usepackage{marvosym}
\\usepackage{wasysym}
\\usepackage{latexsym}
\\usepackage[sort&compress,numbers,comma,square]{natbib}
\\usepackage{url} 
\\usepackage{biblatex} % biblatex
\\usepackage{fancyhdr}
\\usepackage[xetex,
pdfstartview=FitH,
colorlinks=true,
bookmarks=true,
bookmarksnumbered=true,
bookmarksopen=true,
citecolor=blue,
anchorcolor=green,
urlcolor=blue,
CJKbookmarks=true,
linkcolor=blue,
menucolor=blue]{hyperref}
\\setmainfont[Scale=1.4]{Times New Roman}%中文字体
\\setCJKmainfont[Scale=1.4]{文泉驿微米黑}%中文字体
\\linespread{2.0}  % 行间距
\\geometry{a4paper, textwidth=6.5in, textheight=10in,
marginparsep=7pt, marginparwidth=.6in}
%\\newcommand*{\doi}[1]{\href{http://dx.doi.org/#1}{doi: #1}}
\\punctstyle{kaiming}
\\title{}
\\fancyfoot[C]{\\bfseries\\thepage}
%\\chead{\\MakeUppercase\\sectionmark}
\\lhead{\\MakeUppercase}
\\pagestyle{fancy}
\\tolerance=1000
[NO-DEFAULT-PACKAGES]
[NO-PACKAGES]"
("\\section{%s}" . "\\section*{%s}")
("\\subsection{%s}" . "\\subsection*{%s}")
("\\subsubsection{%s}" . "\\subsubsection*{%s}")
("\\paragraph{%s}" . "\\paragraph*{%s}")
("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

