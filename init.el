;;;; Package --- Emacs initialisation 
;;; Commentary: initialisation starting point
;;
;;; Code:

(require 'cl-lib)

;; ensure =user-init-file= and =user-emacs-directory= are correct
(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

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
(setq load-path (cl-remove "org$" load-path :test (lambda (x y) (string-match-p x y))))
(add-to-list 'load-path (expand-file-name "straight/repos/org/lisp" user-emacs-directory))

(setq config-file (expand-file-name "Emacs.org" user-emacs-directory))

;; This produces mrb.el which is then loaded. It checks datetime before tangling.
(org-babel-load-file config-file)

;; END init.el
