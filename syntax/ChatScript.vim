" Vim syntax file
" Language: ChatScript
" Maintainer: Giorgio Robino (giorgio.robino@gmail.com)
" Latest Revision: 17 April 2017

" Quit when a syntax file was already loaded.
if exists("b:current_syntax")
  finish
endif

syntax match csWildcard '\*' 


syntax match csTopicName '\v\~[a-z_\.A-Z]*'
syntax match csFunction  '\v\^[a-z_\.A-Z]+'


" User permanent variables
syntax match csPermanentVariable  '\v\$[a-zA-Z][\._0-9a-zA-Z\[\]]*'

" User transient variables
syntax match csTransientVariable  '\v\$\$[a-zA-Z][\._0-9a-zA-Z\[\]]*'

" Local variables
syntax match csLocalVariable  '\v\$_[a-zA-Z][\._0-9a-zA-Z\[\]]*'

" Fact set
syntax match csFactset '@\(\d*\|\*\)' 

" Boolean & state
syntax match csBoolean '\v(null|true|false)'

" Assigment
syntax match csOperator '\v(\?!|\+\=|-\=|\=|\%\=|\*\=|<<\=|>>\=|<<|>>|&\=|\^\=)'
syntax match csOperator '\v(\'|!|\?|\=\=|and|or|AND|OR|>\=|<\=|!\=|>|<)'

" Execution flow
syntax match csOperator '\v(\s*^if\s*|\s*if\s*|\s*else\s*|\s*^else\s*|\s*else if\s*|\s*^else if\s*|\s*loop\s*|\s*^loop\s*)'

" Match variables
syntax match csMatchVariable '\v_\d+'
syntax match csMatchVariable '\v_\*'

syntax match csRule '\v^\s*[rstu]:'
syntax match csRule '\v^\s*[a-q]:'
syntax match csRule '\v^\s*\?:' 


syntax match csBracketsDelimiter '\v[\[\]]'
syntax match csPatternDelimiter '\v[\(\)]'
syntax match csBlockDelimiter '\v[{}]'

syntax match csKeyword '\v(topic:|concept:|table:|tablemacro:|outputmacro:|patternmacro:|dualmacro:)'
syntax match csKeyword '\v(bot:|data:|canon:|query:|plan:|describe:|replace:)' 

syntax match csComment '\v^\s*#.*$' 
syntax match csTestComment '\v^\s*#!.*$' 


syntax match csString '".*"' 
syntax match csString '\'.*\'' 
syntax match csActiveString '\^".*"' 
syntax match csActiveString '\^\'.*\'' 
syntax match csSpecialChar '\v(\n|\r|\t|\\)' 

"
" define colors
" https://github.com/guns/xterm-color-table.vim
"
highlight csRule              ctermfg=9
highlight csKeyword           ctermfg=51
highlight csOperator          ctermfg=215

highlight csSpecialChar       ctermfg=12
highlight csFactset           ctermfg=12

highlight csComment           ctermfg=8 
highlight csTestComment       ctermfg=7

highlight csPatternDelimiter  ctermfg=15
highlight csBracketsDelimiter ctermfg=7
highlight csBlockDelimiter    ctermfg=215


" variables
highlight csSystemVariable    ctermfg=15
highlight csPermanentVariable ctermfg=10
highlight csMatchVariable     ctermfg=123
highlight csWildcard          ctermfg=123
highlight csLocalVariable     ctermfg=35
highlight csTransientVariable ctermfg=24

highlight csTopicName         ctermfg=10
highlight csFunction          ctermfg=37

highlight csBoolean           ctermfg=15
highlight csConstant          ctermfg=15

" strings
highlight csString            ctermfg=69
highlight csActiveString      ctermfg=50

highlight csLabel             ctermfg=15

let b:current_syntax = 'ChatScript'

