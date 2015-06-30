(require 'package)
(add-to-list 'package-archives
    '("melpa" . "http://melpa.milkbox.net/packages/")
    '("marmalade" . "http://marmalade-repo.org/packages/"))
    
(setq inhibit-splash-screen t
      initial-scratch-message nil)

(when (locate-library "org-mode")
  (setq initial-major-mode 'org-mode))
  
(defalias 'yes-or-no-p 'y-or-n-p)

(setq flyspell-issue-welcome-flag nil)
(setq-default ispell-program-name "/usr/bin/aspell")
(setq-default ispell-list-command "list")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#c0c0c0" "#336c6c" "#806080" "#0f2050" "#732f2c" "#23733c" "#6c1f1c" "#232333"])
 '(custom-safe-themes
   (quote
    ("ffe39e540469ef05808ab4b75055cc81266875fa4a0d9e89c2fec1da7a6354f3" "12722541c8998f056b761bf63a92216aaf4610e4eb1afe7991842a31fa28b6d8" "90d329edc17c6f4e43dbc67709067ccd6c0a3caa355f305de2041755986548f2" "95526d4e92a4c3f49cedcd4693da273a4cef5176c110090c6058f557bb425114" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "dba244449b15bdc6a3236f45cec7c2cb03de0f5cf5709a01158a278da86cb69b" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "34e7163479ef3669943b3b9b1fabe639d6e0a0453e0de79cea2c52cb520d3bc4" default)))
 '(diary-entry-marker (quote font-lock-variable-name-face))
 '(emms-mode-line-icon-image-cache
   (quote
    (image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #1fb3b3\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };")))
 '(fci-rule-color "#c7c7c7")
 '(gnus-logo-colors (quote ("#528d8d" "#c0c0c0")))
 '(gnus-mode-line-image-cache
   (quote
    (image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #1fb3b3\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };")))
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#d4d4d4")
 '(vc-annotate-color-map
   (quote
    ((20 . "#437c7c")
     (40 . "#336c6c")
     (60 . "#205070")
     (80 . "#2f4070")
     (100 . "#1f3060")
     (120 . "#0f2050")
     (140 . "#a080a0")
     (160 . "#806080")
     (180 . "#704d70")
     (200 . "#603a60")
     (220 . "#502750")
     (240 . "#401440")
     (260 . "#6c1f1c")
     (280 . "#935f5c")
     (300 . "#834744")
     (320 . "#732f2c")
     (340 . "#6b400c")
     (360 . "#23733c"))))
 '(vc-annotate-very-old-color "#23733c"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
