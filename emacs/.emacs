;; --------------------
;; Welcome to Emacs
;; --------------------
;; Let's make some magic happen :)

;; Initialize package loader
(package-initialize)

;; Load Org Mode
(use-package org)

;; Load the init file that is in version control
(org-babel-load-file
 (expand-file-name "setup/emacs/config/init.org"))

;; Open the init file
(find-file
 (expand-file-name "setup/emacs/config/init.org"))
;; --------------------
;; end .emacs
;; --------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (epresent yasnippet web-mode use-package tabbar skewer-mode python-django pug-mode projectile pony-mode org-beautify-theme neotree markdown-mode linum-relative js2-highlight-vars jedi ido-vertical-mode highlight-indent-guides helm-core frame-cmds evil atom-dark-theme android-mode all-the-icons))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
