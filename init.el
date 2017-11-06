;;PREPARATION:
;; INSTALL sudo aptitude install python-pip
;; INSTALL sudo pip install rope jade elpy
(package-initialize)
(require 'package)
(dolist (package '(use-package))
   (unless (package-installed-p package)
     (package-install package)))
(use-package paredit
   :ensure t)
;;enable python IDE
(elpy-enable)
;;disable flymake.el UNDERLINE ERRORS
(flymake-stop-all-syntax-checks)
;; auto close bracket insertion. New in emacs 24
(electric-pair-mode 1)
;;Set Ctrl-c/v/x
(cua-mode t) 
;;Set column-mode to always be on 
(setq column-number-mode t)
;;Set line number mode to always be on 
(global-linum-mode t)
;;Cycle between windows
(global-set-key (kbd "M-p") 'ace-window)
;;Cycle between buffers with C-x b
(ido-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (atom-one-dark)))
 '(custom-safe-themes
   (quote
    ("f5b591870422cd28da334552aae915cdcae3edfcfedb6653a9f42ed84bbec69f" "b97a01622103266c1a26a032567e02d920b2c697ff69d40b7d9956821ab666cc" "59171e7f5270c0f8c28721bb96ae56d35f38a0d86da35eab4001aebbd99271a8" default)))
 '(fci-rule-color "#3C3D37")
 '(flymake-start-syntax-check-on-find-file nil)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(magit-diff-use-overlays nil)
 '(nyan-mode t)
 '(nyan-wavy-trail t)
 '(package-archives
   (quote
    (("MELPA" . "https://stable.melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(package-selected-packages (quote (use-package paredit elpy atom-one-dark-theme)))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#282C34" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(flymake-errline ((t (:underline t)))))
;; DISABLED MODES
;;snipet expansion key binding fix for python Elpy
;;(define-key yas-minor-mode-mpa (kbd "C-c k") 'yas-expand)
