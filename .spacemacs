;; -*- mode: emacs-lisp -*-
(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   dotspacemacs-distribution 'spacemacs-base
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     spacemacs-completion
     spacemacs-layouts
     spacemacs-editing
     spacemacs-editing-visual
     spacemacs-evil
     spacemacs-misc
     spacemacs-ui
     (spacemacs-ui-visual :packages (not fancy-battery golden-ratio))
     spacemacs-org
     helm
     org
     ranger
     (shell :variables
            shell-default-height 40
            shell-default-shell 'eshell)
     version-control
     git
     github
     (osx :variables osx-use-option-as-meta nil)
     (auto-completion :variables
                      auto-completion-return-key-behavior nil
                      auto-completion-tab-key-behavior 'complete)
     syntax-checking
     ;; lang
     emacs-lisp
     (ruby :variables
           ruby-test-runner 'rspec
           ruby-version-manager 'chruby)
     elixir
     html
     javascript
     typescript
     markdown
     yaml
     ;; frameworks
     ruby-on-rails
     react
     )
   dotspacemacs-additional-packages '(
                                      darktooth-theme
                                      rainbow-mode
                                      )
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner nil
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes '(
                         spacemacs-dark
                         solarized-light
                         darktooth
                         gruvbox
                         solarized-dark
                         ;; spacegray
                         ;; hickey
                         ;; odersky
                         ;; soft-charcoal
                         ;; seti
                         ;; omtose-softer
                         ;; obsidian
                         ;; mustang
                         ;; molokai
                         ;; flatland
                         )
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Source Code Pro"
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-remap-Y-to-y$ nil
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text nil
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-helm-resize nil
   dotspacemacs-helm-no-header nil
   dotspacemacs-helm-position 'bottom
   dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-enable-paste-transient-state t
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup t
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols nil
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers t
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'nil
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup nil

   ;; Indentation
   require-final-newline t
   indent-tabs-mode nil
   tab-width 2
   c-basic-offset 2
   cperl-indent-level 2
   ruby-indent-level 2
   js-indent-level 2
   evil-shift-width 2
   js2-basic-offset 2
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2

   ;; no warnings about trailing comma
   js2-strict-trailing-comma-warning nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (setq
   ;; local parent directory of git repositories
   magit-repository-directories '("~/projects/")

   ;; no automatic adding of encoding comments
   ruby-insert-encoding-magic-comment nil

   ;; different separator to look good at 1.0 scale (performance?)
   powerline-default-separator 'alternate

   scroll-margin 5

   ;; only refresh magit status pane if its active
   magit-refresh-status-buffer nil
  )

  ;; use spacemacs as $EDITOR
  (global-git-commit-mode t)

  ;; enable editorconfig
  (editorconfig-mode 1)

  ;; disable current line highlighting
  (global-hl-line-mode -1)

  ;; disable smartparens partially
  (eval-after-load 'smartparens
    '(progn
       (sp-pair "(" nil :actions :rem)
       (sp-pair "[" nil :actions :rem)
       (sp-pair "'" nil :actions :rem)
       (sp-pair "\"" nil :actions :rem)))
)

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (zonokai-theme zenburn-theme underwater-theme twilight-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-2-theme sublime-themes subatomic-theme sourcerer-theme soft-stone-theme soft-charcoal-theme seti-theme railscasts-theme professional-theme phoenix-dark-pink-theme pastels-on-dark-theme omtose-phellack-theme occidental-theme noctilux-theme naquadah-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme light-soap-theme jazz-theme inkpot-theme hemisu-theme gruber-darker-theme grandshell-theme gotham-theme flatui-theme firebelly-theme farmhouse-theme espresso-theme django-theme darkmine-theme dakrone-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized cherry-blossom-theme bubbleberry-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-theme alect-themes afternoon-theme helm-purpose window-purpose imenu-list google-translate golden-ratio fancy-battery define-word zen-and-art-theme yaml-mode xterm-color ws-butler window-numbering which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package ujelly-theme twilight-bright-theme tronesque-theme toc-org tide tango-plus-theme tagedit sunny-day-theme subatomic256-theme spacemacs-theme spaceline spacegray-theme soothe-theme solarized-theme soft-morning-theme smyx-theme smeargle slim-mode shell-pop scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reverse-theme reveal-in-osx-finder restart-emacs rbenv ranger rainbow-mode rainbow-delimiters quelpa purple-haze-theme pug-mode projectile-rails popwin planet-theme phoenix-dark-mono-theme persp-mode pbcopy paradox osx-trash osx-dictionary orgit organic-green-theme org-projectile org-present org-pomodoro org-plus-contrib org-download org-bullets open-junk-file oldlace-theme obsidian-theme ob-elixir niflheim-theme neotree mustang-theme multi-term move-text mmm-mode minitest markdown-toc magit-gitflow magit-gh-pulls macrostep lush-theme lorem-ipsum livid-mode linum-relative link-hint less-css-mode launchctl json-mode js2-refactor js-doc jbeans-theme ir-black-theme info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt heroku-theme help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gnuplot github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md gandalf-theme flycheck-pos-tip flycheck-mix flx-ido flatland-theme fill-column-indicator feature-mode eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav editorconfig dumb-jump dracula-theme diff-hl darktooth-theme darkokai-theme darkburn-theme cyberpunk-theme company-web company-tern company-statistics column-enforce-mode coffee-mode clues-theme clean-aindent-mode chruby busybee-theme bundler birds-of-paradise-plus-theme auto-yasnippet auto-highlight-symbol auto-compile ample-zen-theme alchemist aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
