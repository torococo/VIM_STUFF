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
hi Cursor                 ctermbg=234
hi Normal     ctermfg=193 ctermbg=234
hi LineNr     ctermfg=193 ctermbg=234
hi StatusLine ctermfg=193 ctermbg=234
"//<


"//$ SPECIAL CASES
"after end of code
hi NonText    ctermfg=138 ctermbg=232
"visual mode
hi Visual        ctermbg=19
" Vim >= 7.0 specific colors
if version >= 700
  hi MatchParen    ctermbg=19
  hi Pmenu		     ctermfg=221 ctermbg=234
  hi PmenuSel		   ctermfg=209 ctermbg=234

  "ignore...
  hi CursorLine    ctermbg=234
  hi ColorColumn   ctermbg=234
  hi CursorColumn  ctermbg=234
endif
"//<


"//$ SPECIAL
hi StatusLineNC  ctermfg=196 ctermbg=232
hi VertSplit     ctermfg=196 ctermbg=232
hi Folded        ctermfg=196 ctermbg=232 
hi Title         ctermfg=202 ctermbg=234            
hi SpecialKey    ctermfg=196 ctermbg=232
"//<

"//$ COMMENTS
hi Comment     ctermfg=248 ctermbg=234
hi Todo        ctermfg=217 ctermbg=234
"//<

"//$VALUES
hi Boolean     ctermfg=226 ctermbg=234
hi String      ctermfg=226 ctermbg=234
hi Number      ctermfg=226 ctermbg=234
hi Constant    ctermfg=130 ctermbg=234
hi Identifier  ctermfg=130 ctermbg=234
"//<

"//$TYPES
hi Function    ctermfg=46 ctermbg=234
hi Type        ctermfg=226 ctermbg=234
"//<

"//$LOGIC AND CONTROL FLOW
hi Statement  ctermfg=112 ctermbg=234
hi Keyword    ctermfg=112 ctermbg=234
hi Special    ctermfg=208 ctermbg=234
hi PreProc    ctermfg=112 ctermbg=234
" Code-specific colors
hi pythonOperator  ctermfg=2234 ctermbg=234
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
