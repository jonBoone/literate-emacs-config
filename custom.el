(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(connection-local-criteria-alist
   '(((:application tramp :protocol "kubernetes")
      tramp-kubernetes-connection-local-default-profile)
     ((:application tramp :machine "localhost")
      tramp-connection-local-darwin-ps-profile)
     ((:application tramp :machine "Intel-MBP-2019.verizon.net")
      tramp-connection-local-darwin-ps-profile)
     ((:application tramp :protocol "flatpak")
      tramp-container-connection-local-default-flatpak-profile
      tramp-flatpak-connection-local-default-profile)
     ((:application tramp)
      tramp-connection-local-default-system-profile
      tramp-connection-local-default-shell-profile)))
 '(connection-local-profile-alist
   '((tramp-flatpak-connection-local-default-profile
      (tramp-remote-path "/app/bin" tramp-default-remote-path "/bin"
                         "/usr/bin" "/sbin" "/usr/sbin"
                         "/usr/local/bin" "/usr/local/sbin"
                         "/local/bin" "/local/freeware/bin"
                         "/local/gnu/bin" "/usr/freeware/bin"
                         "/usr/pkg/bin" "/usr/contrib/bin" "/opt/bin"
                         "/opt/sbin" "/opt/local/bin"))
     (tramp-kubernetes-connection-local-default-profile
      (tramp-config-check . tramp-kubernetes--current-context-data)
      (tramp-extra-expand-args 97
                               (tramp-kubernetes--container
                                (car tramp-current-connection))
                               104
                               (tramp-kubernetes--pod
                                (car tramp-current-connection))
                               120
                               (tramp-kubernetes--context-namespace
                                (car tramp-current-connection))))
     (tramp-container-connection-local-default-flatpak-profile
      (tramp-remote-path "/app/bin" tramp-default-remote-path "/bin"
                         "/usr/bin" "/sbin" "/usr/sbin"
                         "/usr/local/bin" "/usr/local/sbin"
                         "/local/bin" "/local/freeware/bin"
                         "/local/gnu/bin" "/usr/freeware/bin"
                         "/usr/pkg/bin" "/usr/contrib/bin" "/opt/bin"
                         "/opt/sbin" "/opt/local/bin"))
     (tramp-connection-local-darwin-ps-profile
      (tramp-process-attributes-ps-args "-acxww" "-o"
                                        "pid,uid,user,gid,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                        "-o" "state=abcde" "-o"
                                        "ppid,pgid,sess,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etime,pcpu,pmem,args")
      (tramp-process-attributes-ps-format (pid . number)
                                          (euid . number)
                                          (user . string)
                                          (egid . number) (comm . 52)
                                          (state . 5) (ppid . number)
                                          (pgrp . number)
                                          (sess . number)
                                          (ttname . string)
                                          (tpgid . number)
                                          (minflt . number)
                                          (majflt . number)
                                          (time . tramp-ps-time)
                                          (pri . number)
                                          (nice . number)
                                          (vsize . number)
                                          (rss . number)
                                          (etime . tramp-ps-time)
                                          (pcpu . number)
                                          (pmem . number) (args)))
     (tramp-connection-local-busybox-ps-profile
      (tramp-process-attributes-ps-args "-o"
                                        "pid,user,group,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                        "-o" "stat=abcde" "-o"
                                        "ppid,pgid,tty,time,nice,etime,args")
      (tramp-process-attributes-ps-format (pid . number)
                                          (user . string)
                                          (group . string) (comm . 52)
                                          (state . 5) (ppid . number)
                                          (pgrp . number)
                                          (ttname . string)
                                          (time . tramp-ps-time)
                                          (nice . number)
                                          (etime . tramp-ps-time)
                                          (args)))
     (tramp-connection-local-bsd-ps-profile
      (tramp-process-attributes-ps-args "-acxww" "-o"
                                        "pid,euid,user,egid,egroup,comm=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                        "-o"
                                        "state,ppid,pgid,sid,tty,tpgid,minflt,majflt,time,pri,nice,vsz,rss,etimes,pcpu,pmem,args")
      (tramp-process-attributes-ps-format (pid . number)
                                          (euid . number)
                                          (user . string)
                                          (egid . number)
                                          (group . string) (comm . 52)
                                          (state . string)
                                          (ppid . number)
                                          (pgrp . number)
                                          (sess . number)
                                          (ttname . string)
                                          (tpgid . number)
                                          (minflt . number)
                                          (majflt . number)
                                          (time . tramp-ps-time)
                                          (pri . number)
                                          (nice . number)
                                          (vsize . number)
                                          (rss . number)
                                          (etime . number)
                                          (pcpu . number)
                                          (pmem . number) (args)))
     (tramp-connection-local-default-shell-profile
      (shell-file-name . "/bin/sh") (shell-command-switch . "-c"))
     (tramp-connection-local-default-system-profile
      (path-separator . ":") (null-device . "/dev/null"))))
 '(custom-safe-themes
   '("7e068da4ba88162324d9773ec066d93c447c76e9f4ae711ddd0c5d3863489c52"
     "2e05569868dc11a52b08926b4c1a27da77580daa9321773d92822f7a639956ce"
     "f458b92de1f6cf0bdda6bce23433877e94816c3364b821eb4ea9852112f5d7dc"
     "7ea883b13485f175d3075c72fceab701b5bf76b2076f024da50dff4107d0db25"
     "70b596389eac21ab7f6f7eb1cf60f8e60ad7c34ead1f0244a577b1810e87e58c"
     "570263442ce6735821600ec74a9b032bc5512ed4539faf61168f2fdf747e0668"
     "a138ec18a6b926ea9d66e61aac28f5ce99739cf38566876dc31e29ec8757f6e2"
     "5586a5db9dadef93b6b6e72720205a4fa92fd60e4ccfd3a5fa389782eab2371b"
     "2853dd90f0d49439ebd582a8cbb82b9b3c2a02593483341b257f88add195ad76"
     "ddffe74bc4bf2c332c2c3f67f1b8141ee1de8fd6b7be103ade50abb97fe70f0c"
     "e1f4f0158cd5a01a9d96f1f7cdcca8d6724d7d33267623cc433fe1c196848554"
     "a589c43f8dd8761075a2d6b8d069fc985660e731ae26f6eddef7068fece8a414"
     "467dc6fdebcf92f4d3e2a2016145ba15841987c71fbe675dcfe34ac47ffb9195"
     "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738"
     "636b135e4b7c86ac41375da39ade929e2bd6439de8901f53f88fde7dd5ac3561"
     "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184"
     "512ce140ea9c1521ccaceaa0e73e2487e2d3826cc9d287275550b47c04072bc4"
     "251ed7ecd97af314cd77b07359a09da12dcd97be35e3ab761d4a92d8d8cf9a71"
     "8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443"
     "a9abd706a4183711ffcca0d6da3808ec0f59be0e8336868669dc3b10381afb6f"
     "8b6506330d63e7bc5fb940e7c177a010842ecdda6e1d1941ac5a81b13191020e"
     "3fe1ebb870cc8a28e69763dde7b08c0f6b7e71cc310ffc3394622e5df6e4f0da"
     "b54376ec363568656d54578d28b95382854f62b74c32077821fdfd604268616a"
     "51c71bb27bdab69b505d9bf71c99864051b37ac3de531d91fdad1598ad247138"
     "0c83e0b50946e39e237769ad368a08f2cd1c854ccbcd1a01d39fdce4d6f86478"
     "5f128efd37c6a87cd4ad8e8b7f2afaba425425524a68133ac0efd87291d05874"
     "0c08a5c3c2a72e3ca806a29302ef942335292a80c2934c1123e8c732bb2ddd77"
     "1a1ac598737d0fcdc4dfab3af3d6f46ab2d5048b8e72bc22f50271fd6d393a00"
     "afa47084cb0beb684281f480aa84dab7c9170b084423c7f87ba755b15f6776ef"
     "02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644"
     "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525"
     "adaf421037f4ae6725aa9f5654a2ed49e2cd2765f71e19a7d26a454491b486eb"
     default))
 '(ignored-local-variable-values
   '((elisp-lint-indent-specs (describe . 1) (it . 1) (thread-first . 0)
                              (cl-flet . 1) (cl-flet* . 1)
                              (org-element-map . defun)
                              (org-roam-dolist-with-progress . 2)
                              (org-roam-with-temp-buffer . 1)
                              (org-with-point-at . 1)
                              (magit-insert-section . defun)
                              (magit-section-case . 0)
                              (org-roam-with-file . 2))
     (elisp-lint-ignored-validators "byte-compile" "package-lint")))
 '(org-agenda-files
   '("/Users/iain/Dropbox/pkb/org/projects/home-lab/proxmox/2023-07-04-hardware-configuration.org"
     "/Users/iain/Dropbox/pkb/org/projects/home-lab/proxmox/worklog.org"
     "/Users/iain/Dropbox/pkb/org/projects/open-source/common-lisp/cmucl/worklog.org"
     "/Users/iain/Dropbox/pkb/org/projects/org-mode/worklog.org"
     "/Users/iain/Dropbox/pkb/org/active.org"
     "/Users/iain/Dropbox/pkb/org/future.org"
     "/Users/iain/Dropbox/pkb/org/gtd.org"
     "/Users/iain/Dropbox/pkb/org/inbox.org"
     "/Users/iain/Dropbox/pkb/org/projects.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
