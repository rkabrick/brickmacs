(setq my-user-emacs-directory "~/.emacs.d/")
(setq package-enable-at-startup nil) ; tells emacs not to load any packages before starting up
;; the following lines tell emacs where on the internet to look up
;; for new packages.

;; Package Management
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)  
(add-to-list 'package-archives
             '("marmalade" . "https://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)

;; Bootstrap 'use-package'
(unless (package-installed-p 'use-package) ; unless it is already installed
  (package-refresh-contents) ; updage packages archive
  (package-install 'use-package)) ; and install the most recent version of use-package

(require 'use-package)

(org-babel-load-file (expand-file-name "~/.emacs.d/brickmacs-config.org"))  

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("dc9a506e2c7de79195e446d3433982fe487d8d6f605d6f1b991a3aa410ef7ce2" default)))
 '(package-selected-packages
   (quote
    (org-download rainbow-mode yasnippet whitespace-cleanup-mode which-key use-package smex smartparens smart-hungry-delete ranger projectile origami multiple-cursors loccur linum-relative indent-guide ido-vertical-mode format-all flycheck evil-leader drag-stuff doom-themes doom-modeline dashboard counsel company-irony aggressive-indent ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
