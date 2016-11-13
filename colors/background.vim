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
hi Normal     ctermfg=255 ctermbg=234
hi LineNr     ctermfg=255 ctermbg=234
hi StatusLine ctermfg=255 ctermbg=234
"//<


"//$ SPECIAL CASES
"after end of code
hi NonText    ctermfg=255 ctermbg=232
"visual mode
hi Visual        ctermfg=16 ctermbg=255
" Vim >= 7.0 specific colors
if version >= 700
  hi MatchParen    ctermfg=16 ctermbg=255
  hi Pmenu		     ctermfg=255 ctermbg=16
  hi PmenuSel		   ctermfg=255 ctermbg=236

  "ignore...
  hi CursorLine    ctermbg=16
  hi ColorColumn   ctermbg=16
  hi CursorColumn  ctermbg=16
endif
"//<


"//$ SPECIAL
hi StatusLineNC  ctermfg=255 ctermbg=58
hi VertSplit     ctermfg=255 ctermbg=58
hi Folded        ctermfg=255 ctermbg=58 
hi Title         ctermfg=255           
hi SpecialKey    ctermfg=255 ctermbg=58
"//<

"//$ COMMENTS
hi Comment     ctermfg=255 ctermbg=238
hi Todo        ctermfg=255 ctermbg=238
"//<

"//$VALUES
hi Boolean     ctermfg=255 ctermbg=22
hi String      ctermfg=255 ctermbg=22
hi Number      ctermfg=255 ctermbg=22
hi Constant    ctermfg=255 ctermbg=22
hi Identifier  ctermfg=255 ctermbg=22
"//<

"//$TYPES
hi Function    ctermfg=255 ctermbg=52
hi Type        ctermfg=255 ctermbg=58
hi Special    ctermfg=255 ctermbg=58
"//<

"//$LOGIC AND CONTROL FLOW
hi Statement  ctermfg=255 ctermbg=17
hi Keyword    ctermfg=255 ctermbg=17
hi PreProc    ctermfg=255 ctermbg=17
" Code-specific colors
hi pythonOperator  ctermfg=255 ctermbg=17
"//<

"//$IGNORE
"hi Todo       

" NERDTree colors
hi NERDTreeFile     ctermfg=255
hi NERDTreeDir      ctermfg=111
hi NERDTreeUp       ctermfg=62

hi def link NERDTreeOpenable String
hi def link NERDTreeCloseable NERDTreeOpenable
hi def link NERDTreeCWD String
hi def link NERDTreePart String
"//<
