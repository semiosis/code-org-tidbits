(package-install 's) (require 's)
(package-install 'language-detection) (require 'language-detection)

(defun check-if-prolog ()
  (if (string-equal (format "%s" (language-detection-buffer)) "prolog")
      (prolog-mode)))

(add-hook 'perl-mode-hook 'check-if-prolog)