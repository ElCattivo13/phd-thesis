(TeX-add-style-hook
  "preamble-thesis"
  (lambda ()
    (LaTeX-add-environments
      '("definition" LaTeX-env-label)
    )
    ;; https://tex.stackexchange.com/questions/217799/auctex-11-88-bug-on-latex-env-label-cannot-automatically-insert-label
    (setf (cadr reftex-insert-label-flags)
          (concat (cadr reftex-insert-label-flags) "TLPDRCE"))
    (dolist (label-spec '(("Theorem"      ?T "thm:"  "~\\ref{%s}" t ("Theorem" "Thm.") nil)
                          ("Lemma"        ?L "lem:"  "~\\ref{%s}" t ("Lemma" "Lem.") nil)
			  ("Proposition"  ?P "prop:" "~\\ref{%s}" t ("Proposition" "Prop.") nil)
			  ("Satz"         ?T "thm:"  "~\\ref{%s}" t ("Satz") nil)
			  ("definition"   ?D "def:"  "~\\ref{%s}" t ("Definition" "Def.") nil)
			  ("Remark"       ?R "rem:"  "~\\ref{%s}" t ("Remark" "Rem.") nil)
			  ("Corollary"    ?C "cor:"  "~\\ref{%s}" t ("Corollary" "Cor.") nil)
			  ("Example"      ?E "expl:" "~\\ref{%s}" t ("Example") nil)))
      (add-to-list 'reftex-label-alist label-spec)
      (add-to-list 'LaTeX-label-alist (cons (nth 0 label-spec)
					    (nth 2 label-spec))))
    
   )
 :latex)
