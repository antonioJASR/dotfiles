;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Antonio Sánchez" user-mail-address "antonio@bloq.dev")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 14 :weight 'semi-light)
;;  doom-variable-pitch-font (font-spec :family "sans" :size 13))
(setq doom-font (font-spec :family "JetBrains Mono" :size 15)
  doom-variable-pitch-font (font-spec :family "JetBrains Mono" :size 15))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-vibrant)
;; (setq doom-theme 'doom-palenight)
(setq doom-theme 'doom-horizont)
;; (setq doom-theme 'doom-ayu-mirage)
;; (setq doom-theme 'doom-moonlight)
;; (setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Notes/org/")
(setq org-roam-directory "~/Notes/roam/")
(setq org-roam-dailies-directory "~/Notes/journal/")

;; https://orgmode.org/worg/org-tutorials/advanced-searching.html#searching-entry-text
;; (add-to-list 'org-agenda-custom-commands
;;              '("r" "Notes" tags ""
;;                ((org-agenda-files (file-expand-wildcards "~/Projects/bloq.dev/Notes/*.org")))))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)
;; (setq display-line-numbers-type t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq-default fill-column 100)

;; Change Tabs like the Dark Lord
;; (define-key evil-normal-state-map (kbd "g t") 'centaur-tabs-forward)
;; (define-key evil-normal-state-map (kbd "g T") 'centaur-tabs-backward)

;; Windows
(setq evil-vsplit-window-right t
      evil-split-window-below t)

;; I Like transparent windows
;; (set-frame-parameter (selected-frame) 'alpha '(95 . 90))
;; (add-to-list 'default-frame-alist '(alpha . (95 . 90)))

(add-to-list 'default-frame-alist '(width . 170))
(add-to-list 'default-frame-alist '(height . 60))


;; Enable Beacon everywhere
(beacon-mode 0)
