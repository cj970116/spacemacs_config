
(require 'ivy-posframe)
;; Different command can use different display function.
(setq ivy-posframe-display-functions-alist
      '((swiper          . ivy-display-function-fallback)
        (complete-symbol . ivy-posframe-display-at-point)
        (counsel-M-x     . ivy-posframe-display-at-window-center)
        (t               . ivy-posframe-display)
        (org-tags   . ivy-posframe-display-at-window-center)
        ))
(ivy-posframe-mode 1)
(provide 'cjee-buffer)
