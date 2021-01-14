;; 标签模板
(setq org-tag-alist '((:startgroup . nil)
                      ("@work" . ?w) ("@home" . ?h)
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
(setq org-agenda-files (list "/mnt/f/MyOrg"))

;; 设置任务流程(这是我的配置)
(setq org-todo-keywords
      '((sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f!)")
        (sequence "TODO(t!)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(C@/!)" )
        ))


(provide 'cjee-org)
