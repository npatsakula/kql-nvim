if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syntax keyword kqlKeyword EAS GAS IN .
syntax region  kqlString  matchgroup=kqlStringDelimiter start=+"+ skip=+\\\\\|\\"+ end=+"+

highlight def link potionKeyword      Keyword
highlight def link kqlStringDelimiter String
highlight def link kqlString          String

let b:current_syntax = "kql"

