" Maintainer:	Henrique C. Alves (hcarvalhoalves@gmail.com)
" Version:      1.0
" Last Change:	September 25 2008

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "rafScheme"


"//$ TEXT
hi Cursor                 ctermbg=16
hi Normal     ctermfg=103 ctermbg=16
hi LineNr     ctermfg=103 ctermbg=16
hi StatusLine ctermfg=103 ctermbg=16
"//<


"//$ SPECIAL CASES
"after end of code
hi NonText    ctermfg=138 ctermbg=232
"visual mode
hi Visual        ctermbg=53
" Vim >= 7.0 specific colors
if version >= 700
  hi MatchParen    ctermbg=53 
  hi Pmenu		     ctermfg=138 ctermbg=16
  hi PmenuSel		   ctermfg=197 ctermbg=16

  "ignore...
  hi CursorLine    ctermbg=16
  hi ColorColumn   ctermbg=16
  hi CursorColumn  ctermbg=16
endif
"//<


"//$ SPECIAL
hi StatusLineNC  ctermfg=197 ctermbg=232
hi VertSplit     ctermfg=197 ctermbg=232
hi Folded        ctermfg=197 ctermbg=232 
hi Title         ctermfg=197             
hi SpecialKey    ctermfg=197 ctermbg=232
"//<

"//$ COMMENTS
hi Comment     ctermfg=75 ctermbg=16
hi Todo        ctermfg=75 ctermbg=16
"//<

"//$VALUES
hi Boolean     ctermfg=128 ctermbg=16
hi String      ctermfg=128 ctermbg=16
hi Number      ctermfg=128 ctermbg=16
hi Constant    ctermfg=128 ctermbg=16
hi Identifier  ctermfg=128 ctermbg=16
"//<

"//$TYPES
hi Function    ctermfg=135 ctermbg=16
hi Type        ctermfg=135 ctermbg=16
hi Special    ctermfg=135 ctermbg=16
"//<

"//$LOGIC AND CONTROL FLOW
hi Statement  ctermfg=201 ctermbg=16
hi Keyword    ctermfg=201 ctermbg=16
hi PreProc    ctermfg=201 ctermbg=16
hi pythonOperator  ctermfg=93
"//<

"//$IGNORE
"hi Todo       
" Code-specific colors

" NERDTree colors
hi NERDTreeFile     ctermfg=255
hi NERDTreeDir      ctermfg=111
hi NERDTreeUp       ctermfg=62

hi def link NERDTreeOpenable String
hi def link NERDTreeCloseable NERDTreeOpenable
hi def link NERDTreeCWD String
hi def link NERDTreePart String
"//<
