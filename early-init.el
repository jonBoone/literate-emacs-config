;;  -*- lexical-binding: t; -*-
;; Set gc really large when loading the config file 
(setq gc-cons-threshold (* 200 1024 1024))

;; Disable package.el in favor of straight.el
(setq package-enable-at-startup nil)

;; Don't look for file-handlers yet
(defvar file-name-handler-alist-original file-name-handler-alist)
(setq file-name-handler-alist nil)

;; Don't look in site-lisp for an init.el file
(setq site-run-file nil)

;; clear up the UI clutter
(unless (and (display-graphic-p) (eq system-type 'darwin))
  (push '(menu-bar-lines . 0) default-frame-alist))
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars . 0) default-frame-alist)

;; If we have the native compiler, use it
(message (concat
          "Native compilation is "
          (if (and (fboundp 'native-comp-available-p) (native-comp-available-p))
              (progn
                (setq comp-deferred-compilation t)
                "")
            "*not* ")
          "available"))

(provide 'early-init)
