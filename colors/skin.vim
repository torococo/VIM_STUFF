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
hi Normal     ctermfg=221 ctermbg=16
hi LineNr     ctermfg=221 ctermbg=16
hi StatusLine ctermfg=221 ctermbg=16
"//<


"//$ SPECIAL CASES
"after end of code
hi NonText    ctermfg=138 ctermbg=232
"visual mode
hi Visual        ctermbg=19
" Vim >= 7.0 specific colors
if version >= 700
  hi MatchParen    ctermbg=19
  hi Pmenu		     ctermfg=221 ctermbg=16
  hi PmenuSel		   ctermfg=209 ctermbg=16

  "ignore...
  hi CursorLine    ctermbg=16
  hi ColorColumn   ctermbg=16
  hi CursorColumn  ctermbg=16
endif
"//<


"//$ SPECIAL
hi StatusLineNC  ctermfg=209 ctermbg=232
hi VertSplit     ctermfg=209 ctermbg=232
hi Folded        ctermfg=209 ctermbg=232 
hi Title         ctermfg=202             
hi SpecialKey    ctermfg=209 ctermbg=232
"//<

"//$ COMMENTS
hi Comment     ctermfg=217 ctermbg=16
hi Todo        ctermfg=217 ctermbg=16
"//<

"//$VALUES
hi Boolean     ctermfg=208 ctermbg=16
hi String      ctermfg=208 ctermbg=16
hi Number      ctermfg=208 ctermbg=16
hi Constant    ctermfg=130 ctermbg=16
hi Identifier  ctermfg=130 ctermbg=16
"//<

"//$TYPES
hi Function    ctermfg=167 ctermbg=16
hi Type        ctermfg=130 ctermbg=16
"//<

"//$LOGIC AND CONTROL FLOW
hi Statement  ctermfg=216 ctermbg=16
hi Keyword    ctermfg=216 ctermbg=16
hi Special    ctermfg=204 ctermbg=16
hi PreProc    ctermfg=216 ctermbg=16
" Code-specific colors
hi pythonOperator  ctermfg=216 ctermbg=16
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
