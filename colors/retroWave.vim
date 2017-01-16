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
hi Normal     ctermfg=147 ctermbg=234
hi LineNr     ctermfg=147 ctermbg=234
hi StatusLine ctermfg=147 ctermbg=234
"//<


"//$ SPECIAL CASES
"after end of code
hi NonText    ctermfg=138 ctermbg=234
"visual mode
hi Visual        ctermbg=53
" Vim >= 7.0 specific colors
if version >= 700
  hi MatchParen    ctermbg=53 
  hi Pmenu		     ctermfg=138 ctermbg=234
  hi PmenuSel		   ctermfg=197 ctermbg=234

  "ignore...
  hi CursorLine    ctermbg=234
  hi ColorColumn   ctermbg=234
  hi CursorColumn  ctermbg=234
endif
"//<


"//$ SPECIAL
hi StatusLineNC  ctermfg=197 ctermbg=234
hi VertSplit     ctermfg=197 ctermbg=234
hi Folded        ctermfg=197 ctermbg=234 
hi Title         ctermfg=197             
hi SpecialKey    ctermfg=197 ctermbg=234
"//<

"//$ COMMENTS
hi Comment     ctermfg=246 ctermbg=236
hi Todo        ctermfg=246 ctermbg=236
"//<

"//$VALUES
hi Boolean     ctermfg=128 ctermbg=234
hi String      ctermfg=128 ctermbg=234
hi Constant    ctermfg=128 ctermbg=234
hi Identifier  ctermfg=128 ctermbg=234
"//<

"//$SPECIAL VALUES
hi Number     ctermfg=128 ctermbg=234
hi Special    ctermfg=125 ctermbg=234
"//<

"//$TYPES
hi Function    ctermfg=41 ctermbg=234
hi Type        ctermfg=125 ctermbg=234
"//<

"//$LOGIC AND CONTROL FLOW
hi Statement  ctermfg=87 ctermbg=234
hi Keyword    ctermfg=87 ctermbg=234
hi PreProc    ctermfg=87 ctermbg=234
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
