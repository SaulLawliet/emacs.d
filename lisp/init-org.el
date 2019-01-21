;;; package --- V
;;; Commentary:
;;; Code:

(require-package 'htmlize)

;;; copy from  http://doc.norang.ca/org-mode.html
(setq org-alphabetical-lists t)

;; Explicitly load required exporters
(require 'ox-html)
(require 'ox-latex)
(require 'ox-ascii)

(setq org-ditaa-jar-path "~/.emacs.d/lib/ditaa-0.9.jar")
(setq org-plantuml-jar-path "~/.emacs.d/lib/plantuml-8032.jar")

(add-hook 'org-babel-after-execute-hook 'bh/display-inline-images 'append)

; Make babel results blocks lowercase
(setq org-babel-results-keyword "results")

(defun bh/display-inline-images ()
  (condition-case nil
      (org-display-inline-images)
    (error nil)))

(org-babel-do-load-languages
 (quote org-babel-load-languages)
 (quote ((emacs-lisp . t)
         (dot . t)
         (ditaa . t)
         (R . t)
         (python . t)
         (ruby . t)
         (gnuplot . t)
         (clojure . t)
         (shell . t)
         (ledger . t)
         (org . t)
         (plantuml . t)
         (latex . t))))

; Do not prompt to confirm evaluation
; This may be dangerous - make sure you understand the consequences
; of setting this -- see the docstring for details
(setq org-confirm-babel-evaluate nil)

; Use fundamental mode when editing plantuml blocks with C-c '
(add-to-list 'org-src-lang-modes (quote ("plantuml" . fundamental)))

; experimenting with docbook exports - not finished
(setq org-export-docbook-xsl-fo-proc-command "fop %s %s")
(setq org-export-docbook-xslt-proc-command "xsltproc --output %s /usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl %s")
;
; Inline images in HTML instead of producting links to the image
(setq org-html-inline-images t)
; Do not use sub or superscripts - I currently don't need this functionality in my documents
(setq org-export-with-sub-superscripts nil)
; Use org.css from the norang website for export document stylesheets
(setq org-html-head-extra "<link rel=\"stylesheet\" href=\"https://saullawliet.github.io/assets/css/org.css\" type=\"text/css\" />")
(setq org-html-head-include-default-style nil)
; Do not generate internal css formatting for HTML exports
(setq org-export-htmlize-output-type (quote css))
; Export with LaTeX fragments
(setq org-export-with-LaTeX-fragments t)
; Increase default number of headings to export
(setq org-export-headline-levels 6)

(setq org-publish-project-alist
      (quote (("notebook"
               :base-directory "/data/repositories/notebook"
               :publishing-directory "/data/repositories/saullawliet.github.io/notebook"
               :recursive t
               :table-of-contents nil
               :base-extension "org"
               :publishing-function org-html-publish-to-html
               :style-include-default nil
               :section-numbers nil
               :table-of-contents nil
               :html-head "<link rel=\"stylesheet\" href=\"/assets/css/org.css\" type=\"text/css\" />"
               :author-info nil
               :creator-info nil)
	      ("notebook-extra"
               :base-directory "/data/repositories/notebook"
               :publishing-directory "/data/repositories/saullawliet.github.io/notebook"
               :base-extension "css\\|pdf\\|png\\|jpg\\|gif"
               :publishing-function org-publish-attachment
               :recursive t
               :author nil)
              )))

(defun bh/save-then-publish (&optional force)
  (interactive "P")
  (save-buffer)
  (org-save-all-org-buffers)
  (let ((org-html-head-extra)
        (org-html-validation-link "<a href=\"http://validator.w3.org/check?uri=referer\">Validate XHTML 1.0</a>"))
    ; (org-publish-current-project force)))
    (org-publish-all force)))
(global-set-key (kbd "C-<f12>") 'bh/save-then-publish)

(provide 'init-org)
;;; init-org.el ends here
