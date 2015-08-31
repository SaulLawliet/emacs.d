(require-package 'solarized-theme)

(require 'solarized)
(deftheme solarized-light "The light variant of the Solarized colour theme")
(create-solarized-theme 'light 'solarized-light)
(provide-theme 'solarized-light)

(provide 'init-theme)
