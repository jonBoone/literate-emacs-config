;; Disable package.el in favor of straight.el
(setq package-enable-at-startup nil)

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

(provide 'early-init)
