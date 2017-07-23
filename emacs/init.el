(require 'package)
(package-initialize)

(require 'org)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "~/syncthing/emacs/_emacs.org"))

;; (load-file "~/syncthing/emacs/_emacs.el")
