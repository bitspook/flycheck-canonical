(after-load 'flycheck
  (progn
    (flycheck-define-checker canonical-javascript
      "A javascript syntax and style checker using the Canonical tool.

       See URL `https://github.com/gajus/canonical'."
      :command ("node" "/Users/channi/Documents/Work/applaudience/canonical/dist/bin/index.js" "--stdin" "--linter" "js" "--outputFormat" "checkstyle" "--filePath" source-original)
      :standard-input t
      :error-parser flycheck-parse-checkstyle
      :modes (js-mode js2-mode js3-mode))

    (add-to-list 'flycheck-checkers 'canonical-javascript)))

(provide 'flycheck-canonical-javascript)
