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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;class 3
(add-to-list 'org-latex-classes
             '("cn-usual"
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
%\\usepackage{url} 
%\\usepackage{biblatex} % biblatex
%\\addbibresource{$HOME/emacs/kuaipan/zotero} 
%\\bibliographystyle{unsrtnat}
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
\\setCJKmainfont[Scale=1.2]{文泉驿微米黑}%中文字体
\\linespread{1.5}  % 行间距
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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; c-article
(setq org-latex-classes
      '(("c-article"
         "
\\documentclass[12pt,a4paper]{article}
\\usepackage[margin=2cm]{geometry}
\\usepackage{fontspec}
\\setromanfont{文泉驿微米黑}

\\usepackage{etoolbox}  % Quote 部份的字型設定
\\newfontfamily\\quotefont{文泉驿微米黑}
\\AtBeginEnvironment{quote}{\\quotefont\\small}

\\setmonofont[Scale=0.9]{Courier} % 等寬字型 [FIXME] Courier 中文會爛掉！
\\font\\wqyHei=''宋体'' at 10pt
\\font\\wqyHeiMono=''文泉驿等宽微米黑'' at 10pt
\\font\\wqyHeiMicro=''文泉驿微米黑'' at 10pt
\\XeTeXlinebreaklocale ``zh''
\\XeTeXlinebreakskip = 0pt plus 1pt
\\linespread{1.36}
%
%\\usepackage{biblatex}  %  for latex 
%\\bibliography{\~/kuaipan/writing/zotero.bib}  % 
%
% [FIXME] ox-latex 的設計不良導致 hypersetup 必須在這裡插入
\\usepackage{hyperref}
\\hypersetup{
  colorlinks=true, %把紅框框移掉改用字體顏色不同來顯示連結
  linkcolor=[rgb]{0,0.37,0.53},
  citecolor=[rgb]{0,0.47,0.68},
  filecolor=[rgb]{0,0.37,0.53},
  urlcolor=[rgb]{0,0.37,0.53},
  pagebackref=true,
  linktoc=all,}
"
         ("\\section{%s}" . "\\section*{%s}")
         ("\\subsection{%s}" . "\\subsection*{%s}")
         ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
         ("\\paragraph{%s}" . "\\paragraph*{%s}")
         ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
        ))
;; [FIXME]
;; 原本是不要讓 org 插入 hypersetup（因為 org-mode 這部份設計成沒辦法自訂，或許可以去 report 一下？）
;; 改成自行插入，但這樣 pdfcreator 沒辦法根據 Emacs 版本插入，pdfkeyword 也會無效...幹。
(setq org-latex-with-hyperref t)
;; 把預設的 fontenc 拿掉
;; 經過測試 XeLaTeX 輸出 PDF 時有 fontenc[T1]的話中文會無法顯示。
;; hyperref 也拿掉，改從 classes 處就插入，原因見上面 org-latex-with-hyperref 的說明。
(setq org-latex-default-packages-alist
      '(("" "hyperref" nil)
        ("AUTO" "inputenc" t)
        ("" "fixltx2e" nil)
        ("" "graphicx" t)
        ("" "longtable" nil)
        ("" "float" nil)
        ("" "wrapfig" nil)
        ("" "rotating" nil)
        ("normalem" "ulem" t)
        ("" "amsmath" t)
        ("" "textcomp" t)
        ("" "marvosym" t)
        ("" "wasysym" t)
        ("" "multicol" t)  ; 這是我另外加的，因為常需要多欄位文件版面。
        ("" "amssymb" t)
        "\\tolerance=1000"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;class 2
(add-to-list 'org-latex-classes
             '("cn-article"
               "\\documentclass[10pt,a4paper]{article}
\\usepackage{graphicx}
\\usepackage{xcolor}
\\usepackage[top=2.5cm, bottom=2.5cm, left=2cm, right=2cm]{geometry}    % 控制页边距                             
\\usepackage{xeCJK}
\\usepackage{lmodern}
\\usepackage{verbatim}
\\usepackage{fixltx2e}
\\usepackage{longtable}
\\usepackage{float}
\\usepackage{tikz}
\\usepackage{wrapfig}
\\usepackage{caption}
\\usepackage{soul}
\\usepackage{textcomp}
\\usepackage{listings}
\\usepackage{algorithm}
\\usepackage{algorithmic}
\\usepackage{marvosym}
\\usepackage{wasysym}
\\usepackage{latexsym}
%\\usepackage{natbib}
\\usepackage{biblatex}
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
%\\setmainfont[BoldFont=Adobe Heiti Std]{Adobe Song Std}  
%\\setsansfont[BoldFont=Adobe Heiti Std]{AR PL UKai CN}  
%\\setmonofont{Bitstream Vera Sans Mono}  
%\\newcommand\\fontnamemono{AR PL UKai CN}%等宽字体
%\\newfontinstance\\MONO{\\fontnamemono}
%\\newcommand{\\mono}[1]{{\\MONO #1}}
%\\setCJKmainfont[Scale=0.9]{Adobe Heiti Std}%中文字体
%\\setCJKmonofont[Scale=0.9]{Adobe Heiti Std}
\\setCJKmainfont[Scale=0.9]{文泉驿微米黑}%中文字体
\\geometry{a4paper, textwidth=6.5in, textheight=10in,
marginparsep=7pt, marginparwidth=.6in}
\\definecolor{foreground}{RGB}{220,220,204}%浅灰
\\definecolor{background}{RGB}{62,62,62}%浅黑
\\definecolor{preprocess}{RGB}{250,187,249}%浅紫
\\definecolor{var}{RGB}{239,224,174}%浅肉色
\\definecolor{string}{RGB}{154,150,230}%浅紫色
\\definecolor{type}{RGB}{225,225,116}%浅黄
\\definecolor{function}{RGB}{140,206,211}%浅天蓝
\\definecolor{keyword}{RGB}{239,224,174}%浅肉色
\\definecolor{comment}{RGB}{180,98,4}%深褐色
\\definecolor{doc}{RGB}{175,215,175}%浅铅绿
\\definecolor{comdil}{RGB}{111,128,111}%深灰
\\definecolor{constant}{RGB}{220,162,170}%粉红
\\definecolor{buildin}{RGB}{127,159,127}%深铅绿
%\\punctstyle{kaiming}
\\title{}
\\fancyfoot[C]{\\bfseries\\thepage}
\\chead{\\MakeUppercase\\sectionmark}
\\pagestyle{fancy}
\\tolerance=1000
[NO-DEFAULT-PACKAGES]
[NO-PACKAGES]"
("\\section{%s}" . "\\section*{%s}")
("\\subsection{%s}" . "\\subsection*{%s}")
("\\subsubsection{%s}" . "\\subsubsection*{%s}")
("\\paragraph{%s}" . "\\paragraph*{%s}")
("\\subparagraph{%s}" . "\\subparagraph*{%s}")))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; beamer
;; 导出Beamer的设置
;; allow for export=>beamer by placing #+LaTeX_CLASS: beamer in org files
;;-----------------------------------------------------------------------------
(add-to-list 'org-latex-classes
             ;; beamer class, for presentations
             '("beamer"
               "\\documentclass[11pt,professionalfonts]{beamer}
\\mode
\\usetheme{{{{Warsaw}}}}
%\\usecolortheme{{{{beamercolortheme}}}}
\\beamertemplateballitem
\\setbeameroption{show notes}
\\usepackage{graphicx}
\\usepackage{tikz}
\\usepackage{xcolor}
\\usepackage{xeCJK}
\\usepackage{amsmath}
\\usepackage{lmodern}
\\usepackage{fontspec,xunicode,xltxtra}
\\usepackage{polyglossia}
\\setmainfont{Times New Roman}
\\setCJKmainfont{DejaVu Sans YuanTi}
\\setCJKmonofont{DejaVu Sans YuanTi Mono}
\\usepackage{verbatim}
\\usepackage{listings}
\\institute{{{{beamerinstitute}}}}
\\subject{{{{beamersubject}}}}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\begin{frame}[fragile]\\frametitle{%s}"
                "\\end{frame}"
                "\\begin{frame}[fragile]\\frametitle{%s}"
                "\\end{frame}")))

