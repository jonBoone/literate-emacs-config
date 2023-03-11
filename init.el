;;;; Package --- Emacs initialization
;;; Commentary:
;; Emacs initialization file
;;
;; As a literate emacs configuration, we leverage org-babel.
;; Our goal here is to load a proper subset of org-mode to enable the full configuration.

;;; Code:

(require 'cl-lib)                           ; for remove-if

;; HACK: Disable Org-mode that was shipped with Emacs and add one I control
(setq load-path (remove-if (lambda (x) (string-match-p "org-20" x))
			   (remove-if (lambda (x) (string-match-p "org$" x)) load-path)))
(add-to-list 'load-path "~/.emacs.d/straight/repos/org-mode/lisp")

;; config-file var gets used in iain.el as well, not sure I like that
(setq config-file (expand-file-name "iain.org" user-emacs-directory))

;; This produces iain.el which is then loaded. It checks datetime before tangling.
(org-babel-load-file config-file)

;; END init.el
;; Exception 1:
;; Apparently when disabled functions get enabled, Emacs puts them here
;;

;;; init.el ends here
