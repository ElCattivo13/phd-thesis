(TeX-add-style-hook
 "thesis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrbook" "draft")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("preamble-thesis" "bibresource=references.bib" "bibstyle=alphabetic" "")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "frontmatter"
    "content/introduction"
    "content/preliminaries"
    "content/contextdls"
    "content/mapping"
    "content/jconht"
    "content/conclusions"
    "backmatter"
    "scrbook"
    "scrbook10"
    "preamble-thesis"))
 :latex)

