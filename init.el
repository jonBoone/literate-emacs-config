;;;; Package --- Emacs initialization
;;; Commentary:
;; Emacs initialization file
;;
;; As a literate emacs configuration, we leverage org-babel.
;; Our goal here is to load a proper subset of org-mode to
;; enable the full configuration.

;;; Code:

(require 'cl-lib) ; for 'cl-remove

;; ensure =user-init-file= and =user=emacs-directory= are correct
(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))


;; force custom into separate local file
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

;; ensure that we don't pick up the included version of org-mode
(setq load-path (cl-remove "org$" load-path :test 'string-match-p))

;; setup straight.el for package management
(defvar bootstrap-version)
(setq straight-repository-branch "develop") ; Need this for new org-contrib location
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; configure 'use-package macro to use straight.el
(setq use-package-always-ensure nil   ; Make sure this is nil, so we do not use package.el
      use-package-verbose 'debug      ; TODO  use a debug var for all of config?
      )
;; From this point on we should be able to use `use-package
(use-package straight
  :custom
  (straight-host-usernames '((github . "jonBoone"))) ; TODO Move to personal information?
  (straight-vc-git-default-protocol 'ssh)
  (straight-use-package-by-default t)
  ;; Make sure packages do not pull in internal org, we pregister org from straight.el
  (straight-register-package 'org)
  (straight-register-package 'org-contrib))

;; FROM THIS POINT use-package should work as intended, i.e. using straight.

;; Need to install dependencies of use-package manually, why??
(use-package diminish)


;; set up latest version of org-mode
(use-package org
  :straight (org
	     :includes (org-babel)))
(add-to-list 'load-path "~/.emacs.d/straight/repos/org-mode/lisp")

;; config-file var gets used in iain.el as well, not sure I like that
(setq config-file (expand-file-name "Emacs.org" user-emacs-directory))

;; This produces iain.el which is then loaded. It checks datetime before tangling.
(org-babel-load-file config-file)

(provide 'init)

;; END init.el
;; Exception 1:
;; Apparently when disabled functions get enabled, Emacs puts them here
;;

;;; init.el ends here
