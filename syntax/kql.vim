if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" Keywords highlighting.
syntax keyword kqlKeyword EAS GAS IN

" EAS path and strings highlighting.
syntax region  kqlString  start=+"+ skip=+\\\\\|\\"+ end=+"+

highlight def link potionKeyword      Keyword
highlight def link kqlString          String

let b:current_syntax = "kql"

