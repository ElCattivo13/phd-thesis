(TeX-add-style-hook
 "preamble-thesis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("microtype" "final" "babel") ("scrlayer-scrpage" "automark" "draft=false") ("babel" "main=british" "ngerman" "swedish") ("csquotes" "style=british") ("mathdesign" "bitstream-charter") ("blindtext" "math") ("datetime" "ddmmyyyy") ("todonotes" "english" "colorinlistoftodos" "textsize=scriptsize" "")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "kvoptions"
    "inputenc"
    "fontenc"
    "lmodern"
    "microtype"
    "scrlayer-scrpage"
    "scrhack"
    "etoolbox"
    "xparse"
    "babel"
    "csquotes"
    "amsmath"
    "wasysym"
    "stmaryrd"
    "bbm"
    "pifont"
    "mathdesign"
    "upgreek"
    "marvosym"
    "dsfont"
    "amsthm"
    "thmtools"
    "mathtools"
    "verbatim"
    "setspace"
    "url"
    "filecontents"
    "xspace"
    "calc"
    "blindtext"
    "marginnote"
    "tabularx"
    "enumitem"
    "authblk"
    "graphicx"
    "caption"
    "diagbox"
    "subcaption"
    "booktabs"
    "multirow"
    "titling"
    "layout"
    "ifdraft"
    "datetime"
    "printlen"
    "tikz"
    "ltablex"
    "todonotes")
   (TeX-add-symbols
    '("follows" ["argument"] 0)
    '("tk" 1)
    '("stb" 1)
    '("ayt" 1)
    '("unsure" 1)
    '("restr" 2)
    '("powerset" 1)
    '("Ind" 1)
    '("mergeABox" 2)
    '("prune" 2)
    '("pruneABox" 2)
    '("meta" 1)
    '("obj" 1)
    '("oaxr" 1)
    '("oaxl" 1)
    '("oax" 1)
    '("oGCI" 1)
    '("atmost" 3)
    '("atleast" 3)
    '("nnf" 1)
    '("oOnt" 1)
    '("con" 2)
    '("ALCND" 1)
    '("ALCQD" 1)
    '("ALCID" 1)
    '("ALCOD" 1)
    '("ALCD" 1)
    '("texpdf" 1)
    '("ensureboldmath" 1)
    '("handedin" 1)
    '("secondsupervisoruniversity" 1)
    '("defensedate" 1)
    '("secondsupervisor" 1)
    '("degree" 1)
    '("supervisor" 1)
    "thebibresource"
    "thesupervisor"
    "thedegree"
    "thesecondsupervisor"
    "thedefensedate"
    "thesecondsupervisoruniversity"
    "thehandedin"
    "alert"
    "grid"
    "pagegrid"
    "m"
    "varmathbb"
    "nat"
    "natwz"
    "integ"
    "rat"
    "real"
    "ALC"
    "ALCI"
    "ALCO"
    "ALCQ"
    "ALCOI"
    "ALCIQ"
    "ALCOQ"
    "ALCOIQ"
    "SH"
    "SHO"
    "SHI"
    "SHQ"
    "SHOQ"
    "SHIQ"
    "SHOI"
    "SHOIQ"
    "SROIQ"
    "EL"
    "ELbot"
    "ELObot"
    "FLzero"
    "DLlite"
    "ML"
    "modalK"
    "modalKn"
    "modalKm"
    "MLALC"
    "LTL"
    "CTL"
    "HS"
    "ALCALC"
    "ALCOALC"
    "SHOQSHOQ"
    "SHOIQSHOIQ"
    "SHIQSHIQ"
    "ELALC"
    "ALCEL"
    "DLouter"
    "DLinner"
    "LM"
    "LO"
    "LMLO"
    "klarALC"
    "ALCLTL"
    "NCR"
    "NRR"
    "OCR"
    "OCF"
    "ORR"
    "ORF"
    "I"
    "IA"
    "J"
    "II"
    "HH"
    "JJ"
    "KK"
    "D"
    "T"
    "A"
    "M"
    "B"
    "W"
    "X"
    "Y"
    "RO"
    "RM"
    "Next"
    "until"
    "Bb"
    "BB"
    "Bmfb"
    "BBb"
    "Jb"
    "bsf"
    "ran"
    "dom"
    "im"
    "negnnf"
    "unaineq"
    "oalpha"
    "ocont"
    "MetaSyntaxHighlightOn"
    "MetaSyntaxHighlightOff"
    "CA"
    "tail"
    "ar"
    "trans"
    "Ob"
    "Tb"
    "Ab"
    "HTinput"
    "concat"
    "JA"
    "muM"
    "muO"
    "lhs"
    "rhs"
    "cclass"
    "PTime"
    "NP"
    "coNP"
    "ExpTime"
    "ExpTIME"
    "EXPTime"
    "TwoExpTime"
    "TwoEXPTime"
    "NExpTime"
    "TwoNExpTime"
    "TwoNEXPTime"
    "PSpace"
    "NPSpace"
    "ExpSpace"
    "TwoExpSpace"
    "NExpSpace"
    "TwoNExpSpace"
    "blindtext"
    "blindlist"
    "suth"
    "cmark"
    "xmark"
    "rosirole"
    "Rosirole"
    "rosiroles"
    "Rosiroles"
    "RBS"
    "MM"
    "CC"
    "cellwidth"
    "iotasun"
    "mmid"
    "compress"
    "printseps"
    "isequal"
    "restoretx"
    "proof"
    "IfTikzLibraryLoaded"
    "mathcolor"
    "origexists"
    "origblindtext"
    "origblindlist")
   (LaTeX-add-environments
    '("changemargin" 2))
   (LaTeX-add-array-newcolumntypes
    "L"
    "R"
    "C"
    "Y"))
 :latex)

