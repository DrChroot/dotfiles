(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "monotype" :family "Cousine")))))
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (sanityinc-solarized-light)))
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(focus-follows-mouse nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (w3m xkcd random-splash-image pdf-tools color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized)))
 '(tool-bar-mode nil)
 '(znc-servers (quote (("http://neurotic-ent.com" 6667 nil nil)))))
(add-to-list 'load-path "~/.emacs.d/elisp")
(require 'mingus)
(require 'znc)
(require 'random-splash-image)
(setq random-splash-image-dir (concat (getenv "HOME") "/.emacs.d/splash-images"))
(random-splash-image-set)
