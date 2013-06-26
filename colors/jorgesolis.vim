"This is a modification of original Wombat.vim by Lars H. Nielsen (dengmao@gmail.com)

" Maintainer:	Jorge SOLIS PAUWELS (jorgeluissolis@gmail.com)
" Last Change:	January 13 2013

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "jorgesolis"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#2d2d2d
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu 		guifg=#f6f3e8 guibg=#444444
  hi PmenuSel 	guifg=#000000 guibg=#cae682
endif

" General colors
hi Cursor 		guifg=#242424 guibg=#FFFFFF gui=none
hi Normal 		guifg=#f6f3e8 guibg=#242424 gui=none
hi NonText 		guifg=#808080 guibg=#242424 gui=none
hi LineNr 		guifg=#444444 guibg=#242424 gui=none
hi StatusLine 	guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444 gui=none
hi VertSplit 	guifg=#444444 guibg=#444444 gui=none
hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=none
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold
hi Visual		guifg=#f6f3e8 guibg=#444444 gui=none
hi SpecialKey	guifg=#808080 guibg=#343434 gui=none

" Syntax highlighting
hi Comment 		guifg=#99968b gui=italic
hi Todo 		guifg=#8f8f8f gui=italic
hi Constant 	guifg=#e5786d gui=none
hi String 		guifg=#95e454 gui=italic
hi Identifier 	guifg=#cae682 gui=none
hi Function 	guifg=#cae682 gui=none
hi Type 		guifg=#cae682 gui=none
hi Statement 	guifg=#8ac6f2 gui=none
hi Keyword		guifg=#8ac6f2 gui=none
hi PreProc 		guifg=#e5786d gui=none
hi Number		guifg=#e5786d gui=none
hi Special		guifg=#e7f6da gui=none

" Columns
hi ColorColumn  guibg=#202020
hi SignColumn   guibg=#333333

" Match
hi red          guibg=#FF0000
hi green        guibg=#00FF00
hi blue         guibg=#0000FF
hi cyan         guibg=#00FFFF
hi magenta      guibg=#FF00FF
