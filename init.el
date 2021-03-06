;; Requirements:
;; 'M-x package-refresh-contents'
;; 'M-x package-install solarized-theme'
;; 'M-x package-install dockerfile-mode'
;; 'M-x package-install docker-compose-mode'

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(load-theme 'solarized-dark t)

(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(require 'docker-compose-mode)

(global-display-line-numbers-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(menu-bar-mode nil)
 '(package-selected-packages '(dockerfile-mode csharp-mode solarized-theme))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))

(setq default-frame-alist
      '((left . 1200) (top . 200) (height . 60) (width . 100) ))

(setq-default tab-width 4)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun nuke-all-buffers ()
  (interactive)
  (mapcar 'kill-buffer (buffer-list))
  (delete-other-windows))

(global-set-key (kbd "C-x K") 'nuke-all-buffers)

;disable backup and auto-save
(setq backup-inhibited t)
(setq auto-save-default nil)
