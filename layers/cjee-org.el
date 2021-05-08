;; 标签模板
(setq org-tag-alist '((:startgroup . nil)
                      ("@work" . ?w) ("ARCHIVE" . ?a)
                      ("server" . ?s)
                      (:endgroup . nil)
                      ("path" . ?p) ("config" . ?c)))
;; capture 模板
(setq org-capture-templates nil)
(add-to-list 'org-capture-templates
             '("r" "Work Task" entry
               (file+olp "/mnt/f/MyOrg/110work.org" "Work" "Task")
               "** TODO %^{任务}\n%u\n%a\n" :clock-in t :clock-resume t))
;; 加入到日程列表里
(setq org-agenda-files (list "/mnt/f/MyOrg/110work.org"
                             "/mnt/f/MyOrg/journal.org"
                             ))

;; 设置任务流程(这是我的配置)
(setq org-todo-keywords
      '((sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f!)")
        (sequence "TODO(t!)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(C@/!)" )
        ))


; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

; Use IDO for both buffer and file completion and ido-everywhere to t
(setq org-completion-use-ido t)
(setq ido-everywhere t)
(setq ido-max-directory-size 100000)
(ido-mode (quote both))
; Use the current window when visiting files and buffers with ido
(setq ido-default-file-method 'selected-window)
(setq ido-default-buffer-method 'selected-window)
; Use the current window for indirect buffer display
(setq org-indirect-buffer-display 'current-window)

;;;; Refile settings
; Exclude DONE state tasks from refile targets
(defun bh/verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))

(setq org-refile-target-verify-function 'bh/verify-refile-target)

(provide 'cjee-org)
