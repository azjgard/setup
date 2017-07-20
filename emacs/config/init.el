(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(global-set-key (kbd "C-SPC") 'mode-line-other-buffer)

(use-package evil
  :init
  (setq evil-shift-width 2)
  (setq evil-want-C-u-scroll t)
  :ensure t
  :config
  (evil-define-key 'normal evil-motion-state-map (kbd "gc") 'comment-or-uncomment-region)
  (evil-define-key 'normal evil-motion-state-map (kbd "<tab>") 'indent-for-tab-command)
  (evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
  (evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
  (evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
  (evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
  (evil-mode 1))

(ido-mode)
(ido-vertical-mode)
(setq ido-enable-flex-matching t)

(require 'yasnippet)
(yas-global-mode 1)

(add-to-list 'load-path (expand-file-name "snippets"))
(add-hook 'term-mode-hook (lambda() (yas-minor-mode -1)))

(setq inhibit-startup-screen t)
(setq initial-buffer-choice t)

(toggle-frame-maximized)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

(load-theme 'wombat)

(linum-relative-global-mode)
(setq linum-relative-format "%3s |")
(setq linum-relative-current-symbol "")

(add-to-list 'default-frame-alist '(font . "DroidSansMonoForPowerline Nerd Font Book" ))
(set-face-attribute 'default t :font "DroidSansMonoForPowerline Nerd Font Book"  )

(setq org-src-fontify-natively t)

(add-hook 'org-mode-hook 'auto-fill-mode)
(add-hook 'org-mode-hook '(lambda() "" (set-fill-column 80)))
