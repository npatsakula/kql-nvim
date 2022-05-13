if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" Keywords highlighting.
syntax keyword kqlKeyword EAS GAS EXIST SKIP
syntax keyword kqlIn IN WITH
syntax keyword kqlAnd AND
" EAS path and strings highlighting.
syntax region kqlString start=+"+ skip=+\\\\\|\\"+ end=+"+
" Operators highlighting.
syntax match  kqlOperator display "\%(+\|-\|/\|*\|=\|>\|<\)=\?"
" Boolean highlighting.
syntax keyword kqlBoolean true false
" Number highlighting.
syntax match kqlNumber display "\<[0-9][0-9_]*\%([iu]\%(size\|8\|16\|32\|64\|128\)\)\="
" Type modifier highlighting.
syntax match kqlTypeModifier "::"


highlight def link kqlKeyword  Keyword
highlight def link kqlString   String
highlight def link kqlIn       Special
highlight def link kqlOperator Operator
highlight def link kqlBoolean  Boolean
highlight def link kqlAnd      Special
highlight def link kqlNumber   Number

highlight def link kqlTypeModifier Delimiter

let b:current_syntax = "kql"

