" Vim syntax file
" Language: ChatScript
" Maintainer: Giorgio Robino (giorgio.robino@gmail.com)
" Latest Revision: 17 April 2017

" Quit when a syntax file was already loaded.
if exists("b:current_syntax")
  finish
endif

"echom "Our syntax highlighting code will go here."

syntax match csRule '[rstu]:'
syntax match csRule '[a-q]:'
syntax match csRule '\v\?:' 

syntax match csKeyword 'topic:\|concept:\|table:\|tablemacro:\|outputmacro:\|patternmacro:\|dualmacro:'
syntax match csKeyword 'bot:\|data:\|canon:\|query:\|plan:\|describe:\|replace:' 

syntax match csComment '\v#.*$' 
syntax match csTestComment '\v#!.*$' 

" syntax match csLabel  '\a\+_\a\+' 
syntax match csString '".*"' 
syntax match csActiveString '\^".*"' 


syntax match csWildcard '\*' 

syntax match csSpecialChar '\\n\|\\r\|\\t\|\\' 

syntax match csBracketsDelimiter '\[\|\]'
syntax match csPatternDelimiter '(\|)'
syntax match csBlockDelimiter '{\|}'

syntax match csTopicName '\~\a*'
syntax match csFunction  '\^[a-z_\.A-Z]\+'

" Match variables
syntax match csMatchVariable '_\(\d*\|\*\)' 

" User permanent variables
syntax match csPermanentVariable  '\$[a-zA-Z][._0-9a-zA-Z]\+'

" User transient variables
syntax match csTransientVariable  '\$\$[a-zA-Z][._0-9a-zA-Z]\+'

" Local variables
syntax match csLocalVariable  '\$_[a-zA-Z][._0-9a-zA-Z]\+'

" Fact set
syntax match csFactset '@\(\d*\|\*\)' 

" Boolean & state
syntax match csBoolean '\(null\|true\|false\)'

" Assigment
syntax match csOperator '\(?!\|+=\|-=\|\\*=\|=\|%=\|*=\|<<=\|>>=\|<<\|>>\|&=\|^=\)'
syntax match csOperator '\'\|\(!\|==\|AND\|and\|OR\|or\|>=\|<=\|!=\|>\|<\|?\)'

" Execution flow
syntax match csOperator '\(\^if\|if\|else\|\^else\|else if\|\^else if\|loop\|\^loop\)'


" mapping with standard vim highlight colors
highlight link csOperator          Operator
highligh  link csSpecialChar       Character
highligh  link csPreProc           PreProc
highlight link csRule              Keyword
highlight link csFactset           Keyword

highlight link csComment           Comment
highlight link csTestComment       String

highlight link csPatternDelimiter  Ignore 
highlight link csBracketsDelimiter Keyword
highlight link csBlockDelimiter    Ignore

highlight link csWildcard          Keyword 

" variables
highlight link csMatchVariable     Keyword
highlight link csSystemVariable    StorageClass
highlight link csPermanentVariable Identifier
highlight link csTransientVariable StorageClass
highlight link csLocalVariable     String

highlight link csName              Statement
highlight link csKeyword           Keyword
highlight link csTopicName         Keyword
highlight link csFunction          Special
highlight link csBoolean           String
highlight link csConstant          Constant

" strings
highlight link csString            String
highlight link csActiveString      String 

highlight link csLabel             Todo

let b:current_syntax = 'ChatScript'

