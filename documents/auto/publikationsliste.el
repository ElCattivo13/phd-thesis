(TeX-add-style-hook
 "publikationsliste"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("babel" "british") ("biblatex" "backend=biber" "style=alphabetic" "abbreviate=false" "minalphanames=3" "maxnames=99" "maxitems=99")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "latex2e"
    "scrartcl"
    "scrartcl10"
    "inputenc"
    "fontenc"
    "lmodern"
    "babel"
    "csquotes"
    "biblatex"))
 :latex)

