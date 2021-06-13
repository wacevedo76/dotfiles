;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it again, replace the t with 0)
(setq inhibit-startup-message t)

;; Disable menus and set visible bell
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq visible-bell t)
(setq display-line-numbers-mode t)
(setq user-emacs-directory "/home/wacevedo/.emacs.d")

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Change to your .emacs.d/ directory accordingly

(require 'package)
(require 'use-package)





;; Enable transient mark mode
(transient-mark-mode 1)
;;;;Org mode configuration
(use-package org
  :ensure t)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))


;; Org mode key bindings
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(zenburn-theme use-package notes-mode evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
