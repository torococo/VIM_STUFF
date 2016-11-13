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
hi Normal     ctermfg=191 ctermbg=16
hi LineNr     ctermfg=245 ctermbg=16
hi StatusLine ctermfg=245 ctermbg=16
"//<

"//$ SPECIAL CASES
"after end of code
hi NonText    ctermfg=138 ctermbg=232
"visual mode
hi Visual        ctermfg=255 ctermbg=239
" Vim >= 7.0 specific colors
if version >= 700
  hi MatchParen    ctermfg=255 ctermbg=239
  hi Pmenu		     ctermfg=247 ctermbg=16
  hi PmenuSel		   ctermfg=255 ctermbg=16

  "ignore...
  hi CursorLine    ctermbg=16
  hi ColorColumn   ctermbg=16
  hi CursorColumn  ctermbg=16
endif
"//<


"//$ SPECIAL
hi StatusLineNC  ctermfg=255 ctermbg=232
hi VertSplit     ctermfg=255 ctermbg=232
hi Folded        ctermfg=255 ctermbg=232 
hi Title         ctermfg=255             
hi SpecialKey    ctermfg=255 ctermbg=232
"//<

"//$ COMMENTS
hi Comment     ctermfg=240 ctermbg=233
hi Todo        ctermfg=240 ctermbg=233
"//<

"//$VALUES
hi Boolean     ctermfg=252 ctermbg=235
hi String      ctermfg=252 ctermbg=235
hi Number      ctermfg=252 ctermbg=235
hi Constant    ctermfg=252 ctermbg=235
hi Identifier  ctermfg=252 ctermbg=235
"//<

"//$TYPES
hi Function    ctermfg=250 ctermbg=16
hi Type        ctermfg=250 ctermbg=16
"//<

"//$LOGIC AND CONTROL FLOW
hi Statement  ctermfg=255 ctermbg=16
hi Keyword    ctermfg=255 ctermbg=16
hi Special    ctermfg=255 ctermbg=16
hi PreProc    ctermfg=255 ctermbg=16
hi pythonOperator  ctermfg=255
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
