(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Change to your .emacs.d/ directory accordingly
(setq user-emacs-directory "/home/wacevedo/.emacs.d") 
(require 'package)
(require 'use-package)

(package-initialize)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://stable.melpa.org/packages/"))

(use-package org
  :ensure t)

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))
