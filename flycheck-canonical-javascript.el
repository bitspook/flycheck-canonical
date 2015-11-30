(after-load 'flycheck
  (flycheck-define-checker canonical-javascript
    "A javascript syntax and style checker using the Canonical tool.

       See URL `https://github.com/gajus/canonical'."
    :command ("canonical" "--stdin" "--linter" "js" "--outputFormat" "checkstyle" "--filePath" source-original)
    :standard-input t
    :error-parser flycheck-parse-checkstyle
    :modes (js-mode js2-mode js3-mode web-mode)))

;; (add-to-list 'flycheck-checkers 'canonical-javascript)

(provide 'flycheck-canonical-javascript)
