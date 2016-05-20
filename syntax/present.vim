" Vim syntax file
" Language: present (http://godoc.org/code.google.com/p/go.tools/present)
" Filenames: *.slide

if exists("b:current_syntax")
  finish
endif

unlet! b:current_syntax

" Syntax
syn keyword Todo TODO
syn region slideSection start="^*\+ "hs=e+1 end="$"he=s-1
syn match slideBullet "^-\+ "
syn region slidePrefomat start="^\s\+" end="$"
syn match slideCode "^\.\(code\|play\|image\|iframe\|link\|html\|caption\)" contains=slideOption,slideLink
syn match slideOption "\s\+-\S\+"
syn match slideLink "https\?://[0-9a-zA-Z_/:%#\$&\?\(\)~\.=\+\-]\+"
syn region slideComment start="^#" end="$" contains=Todo

" Highlight
hi link slideSection Identifier
hi link slideBullet Keyword
hi link slidePrefomat PreProc
hi link slideCode Function
hi link slideOption Type
hi link slideLink Underlined
hi link slideComment Comment

let b:current_syntax = "slide"

" vim:set sw=2:
