;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Theme
(add-to-list 'load-path "~/.emacs.d/pastel-tron-theme/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/pastel-tron-theme/")
(require 'pastel-tron-theme)
(load-theme `pastel-tron t)

(set-face-attribute 'default nil :height 143)
(setq inhibit-startup-screen t)
(setq ring-bell-function 'ignore)
(tool-bar-mode -1)
(setq evil-motion-state-cursor 'box)
(setq evil-visual-state-cursor 'box)
(setq evil-normal-state-cursor 'box)
(setq evil-insert-state-cursor 'box)
(show-paren-mode 1)
(setq show-paren-style 'parenthesis)
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
