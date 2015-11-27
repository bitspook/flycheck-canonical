(after-load 'flycheck
  (flycheck-define-checker canonical-scss
    "A javascript syntax and style checker using the Canonical tool.

       See URL `https://github.com/gajus/canonical'."
    :command ("canonical" "--stdin" "--linter" "scss" "--outputFormat" "checkstyle" "--filePath" source-original)
    :standard-input t
    :error-parser flycheck-parse-checkstyle
    :modes (scss-mode sass-mode css-mode)))

;; (add-to-list 'flycheck-checkers 'canonical-scss)

(provide 'flycheck-canonical-scss)
