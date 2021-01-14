(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(colir-compose-method 'colir-compose-alpha)
 '(custom-safe-themes
   '("990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "71e5acf6053215f553036482f3340a5445aee364fb2e292c70d9175fb0cc8af7" default))
 '(evil-want-Y-yank-to-eol nil)
 '(org-capture-templates
   '(("b" "Bug" entry
      (file+olp "/mnt/f/MyOrg/110work.org" "Work Task")
      "** BUG %^{bug} %u" :clock-in t :clock-keep t :clock-resume t)
     ("n" "一个笔记" entry
      (file+olp "/mnt/f/MyOrg/note.org" "Take a note")
      "** %^{note}  %u ")
     ("t" "一个任务" entry
      (file+olp "/mnt/f/MyOrg/110work.org" "Work Task")
      "** TODO %^{任务}    %u" :clock-in t :clock-keep t :clock-resume t)))
 '(org-download-image-dir "/mnt/f/MyOrg")
 '(org-download-screenshot-file "/mnt/MyOrg/shoot/shoot.png")
 '(org-image-actual-width '(500))
 '(package-selected-packages
   '(add-node-modules-path liberime rime web-beautify tide typescript-mode prettier-js nodejs-repl lsp-ui lsp-treemacs lsp-origami origami lsp-ivy lsp-mode dash-functional json-navigator hierarchy json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc emojify emoji-cheat-sheet-plus helm helm-core company-emoji doom-themes yasnippet-snippets ws-butler writeroom-mode winum which-key wgrep volatile-highlights vi-tilde-fringe uuidgen use-package unfill undo-tree treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil toc-org symon symbol-overlay string-inflection spaceline-all-the-icons smex smeargle restart-emacs request rainbow-delimiters popwin pcre2el password-generator paradox overseer orgit org-superstar org-rich-yank org-projectile org-present org-pomodoro org-mime org-cliplink org-brain open-junk-file nameless mwim move-text magit-svn magit-section magit-gitflow macrostep lorem-ipsum link-hint ivy-yasnippet ivy-xref ivy-purpose ivy-hydra ivy-avy indent-guide hybrid-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-make google-translate golden-ratio gnuplot gitignore-templates gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link fuzzy forge font-lock+ flyspell-correct-ivy flycheck-pos-tip flycheck-package flycheck-elsa flx-ido fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-easymotion evil-cleverparens evil-args evil-anzu eval-sexp-fu emr elisp-slime-nav editorconfig dumb-jump dotenv-mode dired-quick-sort diminish devdocs define-word counsel-projectile company column-enforce-mode clean-aindent-mode centered-cursor-mode auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile aggressive-indent ace-link ac-ispell)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
