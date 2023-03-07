;;;; Package --- Emacs initialization
;;; Commentary:
;; Emacs initialization file
;;
;; As a literate emacs configuration, we leverage org-babel.
;; Our goal here is to load a proper subset of org-mode to enable the full configuration.

;;; Code:

(require 'cl)                           ; for remove-if

;; Set gc really large, especially when loading the config file
;; These two lines prevent a stuttering cursor for me, in most cases
;; FIXME: gc collection in idle time is not the way to do this, but it works for me
(setq gc-cons-threshold (* 200 1024 1024))
(run-with-idle-timer 5 t #'garbage-collect)

;; If we have the native compiler, use it
(message (concat
          "Native compilation is "
          (if (and (fboundp 'native-comp-available-p) (native-comp-available-p))
              (progn
                (setq comp-deferred-compilation t)
                "")
            "*not* ")
          "available"))

;; HACK: Disable Org-mode that was shipped with Emacs and add one I control
;; (setq load-path (remove-if (lambda (x) (string-match-p "org$" x)) load-path))
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
