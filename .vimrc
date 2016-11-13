" //$__README_
" to install this .vimrc:
" install build-essential to get C++
" first install python-dev to get python
" create or append to ~/.bashrc:
" alias vim='vim -u /path/to/this/vimrc'
" install vundle by apt-get installing git
" then enter git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" PluginInstall to install all plugins
" finally, compile ycm first apt-get install CMake
" then go to ~/.vim/bundle/YouCompleteMe and enter ./install.sh --clang-completer
" also, to install tern, go into the bundle/tern_for_vim directory and run npm install
"
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"//<

"//$__PLUGINS__
" let Vundle manage Vundle, required

"GENERAL CODING IMPROVEMENTS
Plugin 'scrooloose/syntastic'
Plugin 'gmarik/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe' "Plugin 'oblitum/YouCompleteMe' 
Plugin 'Raimondi/delimitMate'
"LEARN HOW TO USE THIS!!
Plugin 'SirVer/ultisnips'

"LANGUAGE SPECIFIC:
"JULIA
Plugin 'JuliaLang/julia-vim'

"OCAML
Plugin 'def-lkb/ocp-indent-vim'

"GLSL
Plugin 'tikhomirov/vim-glsl'

"C/CPP
Plugin 'justinmk/vim-syntax-extra'
Plugin 'octol/vim-cpp-enhanced-highlight'
"useful, unused
Plugin 'vim-scripts/a.vim'

"CLOJURE
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'

"PYTHON
Plugin 'tshirtman/vim-cython'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
"set nofoldenable

"HTML
Plugin 'mattn/emmet-vim'

"JAVASCRIPT
Plugin 'lukaszb/vim-web-indent'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'wookiehangover/jshint.vim'
Plugin 'marijnh/tern_for_vim'

"CSHARP
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'tpope/vim-dispatch'
Plugin 'ctrlpvim/ctrlp.vim'

"APPEARANCE PLUGINS
Plugin 'croaker/mustang-vim'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'morhetz/gruvbox'
Plugin 'guns/xterm-color-table.vim'
Plugin 'Sclarki/neonwave.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'oblitum/rainbow' " Plugin 'kien/rainbow_parentheses.vim'
"//<

"//$__SOME DEFAULTS__
" All of your Plugins must be added before the following line
call vundle#end()            " required

"so ~/.vim/bundle/delimitMate/test/_setup.vim
"let delimitMate_expand_cr=0 "makes delimitMate not expand parens
filetype indent plugin on

filetype plugin indent on    " required
filetype indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set nocompatible
filetype off

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
" ADDITIONAL STUFF
" SuperTab setting!
"let g:SuperTabDefaultCompletionType = "<c-n>"
"let g:ycm_add_preview_to_completeopt = 1

"au BufEnter,BufNew *.java colorscheme inkpot
"au BufEnter,BufNew *.c colorscheme leo
"au BufEnter,BufNew *.cpp colorscheme leo
"au BufEnter,BufNew *.ml colorscheme flatland 
au BufEnter,BufNew *.txt nnoremap j gjh 
au BufEnter,BufNew *.txt nnoremap k gk
au BufEnter,BufNew *.html set syntax=javascript
au BufEnter,BufNew *.txt set linebreak
au BufEnter,BufNew *.txt set ft=txtfmt
au BufEnter,BufNew *.tex nnoremap =r :w<CR> :!pdflatex %<CR><CR>:!open '%:r'.pdf &<CR><CR>
au BufEnter,BufNew *.txt nnoremap =r :w<CR> :set background=dark<CR> :hardcopy %<CR> :!ps2pdf '%:r'.ps<CR><CR> :colorscheme mustang5<CR>
nnoremap =i :%s/}/\r}\r/g<CR>
nnoremap -i :%s/\n\s*}\s*\n\s*/}/g<CR>
set t_Co=256
nnoremap <Leader>l :YcmCompleter GoToDeclaration <CR>
au BufEnter,BufNew *.ml nnoremap <Leader>l :Locate <CR>

"colorscheme kolor
"colorscheme slate
"colorscheme seoul256
"colorscheme grb256

set number
""gets rid of scratch window for clang complete
"set conceallevel=2
"set concealcursor=vin
"let g:clang_snippets=1
"let g:clang_conceal_snippets=1
""The single one that works with clang_complete
"let g:clang_snippets_engine='clang_complete'
"
"" Complete options (disable preview scratch window, longest removed to aways
"" show menu)
"set completeopt=menu,menuone
set completeopt=preview
set previewheight=0
"
"allows printing to ps file, use ps2pdf to make pdf

let &printexpr="(v:cmdarg=='' ? ".
    \"system('lpr' . (&printdevice == '' ? '' : ' -P' . &printdevice)".
    \". ' ' . v:fname_in) . delete(v:fname_in) + v:shell_error".
    \" : system('mv '.v:fname_in.' '.v:cmdarg) + v:shell_error)"

"
"" Limit popup menu height
"set pumheight=20
"//<

"//$__PLUGIN SPECIFIC SETTINGS__
"" SuperTab completion fall-back 
"let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'
"let g:ycm_add_preview_to_completeopt=1
let g:pymode_folding = 0
let g:SuperTabDefaultCompletionType='<C-X><C-O>'
let tern#is_show_argument_hints_enabled = 1
let g:jedi#completions_enabled=1
let g:jedi#popup_select_first = 1
let g:ycm_auto_trigger = 1
let g:enable_diagnostic_signs = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:syntastic_ocaml_checkers = ['merlin']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_check_on_open=1
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-X>'
let JSHintUpdateWriteOnly=1
"let g:JSHintHighlightErrorLine = 0
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
let g:latex_to_unicode_tab=0
let g:latex_to_unicode_suggestions=0
"let g:rainbow_active=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=233
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=232

autocmd FileType html,css EmmetInstall
"let g:ycm_autoclose_preview_window_after_insertion = 1
let g:tern_show_argument_hints='on_delay'
"//<

"//$__FILETYPE SPECIFIC SETTINGS with some general__
"python syntax version 2
let python_version_2=1

set laststatus=2
set statusline+=%F

"merlin stuff for ocaml:
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

"fun! ActivateRainbow()
"  if &ft == 'python'
"    return
"  endif
"  :RainbowToggle
"endfun
"
"WEIRD PYTHON MACRO
nnoremap =e :exec '!python' shellescape(@%, 1)<cr>
"python << EOL
"import vim, StringIO,sys
"def PyExecReplace(line1,line2):
"  r = vim.current.buffer.range(int(line1),int(line2))
"  redirected = StringIO.StringIO()
"  sys.stdout = redirected
"  exec('\n'.join(r) + '\n')
"  sys.stdout = sys.__stdout__
"  output = redirected.getvalue().split('\n')
"  r[:] = output[:-1] # the -1 is to remove the final blank line
"  redirected.close()
"EOL
"nnoremap =e :%Pyer<CR>
"command -range Pyer python PyExecReplace(<f-line1>,<f-line2>)

"autocmd BufEnter * call ActivateRainbow()
autocmd BufEnter,BufNew *.py setlocal completeopt-=preview
autocmd BufEnter,BufNew *.py nnoremap E :execute '!python' shellescape(@%, 1)<cr>
autocmd BufEnter,BufNew *.clj nmap S cpp
autocmd BufEnter,BufNew *.clj nmap E :%Eval<cr>
autocmd BufEnter,BufNew *.cpp nmap E :w<cr> :execute 'make go'<cr>
"autocmd BufEnter,BufNew *.py nnoremap <Leader>s :!clear;'!python' shellescape(@%, 1)<cr>
"autocmd BufEnter,BufNew !*.py let g:rainbow_active=1
autocmd BufEnter,BufNew * set t_Co=256
autocmd BufEnter,BufNew * set backspace=2
autocmd BufEnter,BufNew * set nowritebackup
autocmd BufEnter,BufNew * set nobackup
"autocmd BufEnter,BufNew * set relativenumber
"autocmd BufEnter,BufNew * set number
autocmd BufEnter,BufNew * set ruler
autocmd BufEnter,BufNew * set autoindent
autocmd BufEnter,BufNew * set cindent
autocmd BufEnter,BufNew * set tabstop=2
autocmd BufEnter,BufNew * set softtabstop=2
autocmd BufEnter,BufNew * set shiftwidth=2
autocmd BufEnter,BufNew * set expandtab
"autocmd BufEnter,BufNew *.js set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType cuda set ft=cuda.cpp
"autocmd BufEnter,BufNew make setlocal noexpandtab
set noet
"autocmd BufEnter,BufNew * set ls=2
autocmd BufEnter,BufNew * set wrapmargin=0
autocmd BufEnter,BufNew *.JSON set ft=javascript
"if(tern#is_show_argument_hints_enabled())

autocmd BufEnter,BufNew *akefile set noet 
"set background=light
set background=dark

"PYTHON SETTINGS
"TURNING OFF SYNTASTIC ANNOYING FEATURES
let g:syntastic_mode_map={'passive_filetypes': ['python']}
"USING JEDI INSTEAD OF YCM


"SPACE TO LEARN VIMSCRIPT:

"SYNTAX AND REFERENCE:
"
":help keycodes will display all key mappings! helpful!
"
"\ used to extend command to next line
"| used to chain commands on the same line
"let name="Rafael" use let keyword to define variables
"
"types of values:
"scalar like "Name" or 165
"list like ['item1',10,'etc']
"dictionary like {'key':'value','key2':10}
"
"variable scoping: done with a prefix
"g:varname global
"s:varname local to current script file
"w:varname local to current editor window
"t:var local to current editor tab
"b:var local to current editor buffer
"l:var local to the current function
"a:var parameter to the current function
"v:var one that vim predefines?
"
"&varname tells vim you are referring to a vim option, not a varialbe that
"happens to have the same name!
"@varname sets registers as variables could be useful for printing and stuph
"&l:var &g:var local vim option, global vim option
"$var environment var
"
"string concat: string.=concatstring
"or: string.concatstring
"+str converts string to number!
"
"testing for empty string: use empty function! if empty(string)
"append # or ? to a comparison to specify case-sensitive or case-insensitive

"MAKE SPACE PAGE DOWN:

function! ToggleSyntax()
  if exists("g:syntax_on") "exists specifies whether a variable is defined
    syntax off
  else
    syntax enable
  endif
endfunction


"the silent executes the function without printing, the nmap sets the keycombo
"to occur during normal mode
nmap <silent> ;s :call ToggleSyntax()<CR>

imap <silent> <C-C><C-C> <C-R>=string(eval(input("Calculate: ")))<CR>
" built in calculator!
" <C-R>=string inserts string to current line!
"//<

"//$__COLORSCHEMIN__


let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick','DarkOrchid3']
"let g:rainbow_ctermfgs = ['blue','lightblue','lightcyan']
"let g:rainbow_ctermfgs = ['lightcyan','lightmagenta','cyan','blue','magenta','darkcyan','darkred','white']
"let g:rainbow_ctermfgs = ['lightcyan','lightmagenta','cyan','blue','magenta','darkcyan','darkred']
let g:rainbow_ctermfgs = ['lightcyan','cyan','blue','darkcyan','darkblue']
"let g:rainbow_ctermfgs = ['cyan','lightcyan']
hi SpellBad ctermbg=52
hi SpellCap ctermbg=17
""    \ ['darkmagenta',   'RoyalBlue3'],
""    \ ['yellow',   'RoyalBlue3'],
""    \ ['darkred',   'RoyalBlue3'],
""    \ ['brown',    'SeaGreen3'],
""    \ ['magenta',    'RoyalBlue3'],
""    \ ['blue',    'firebrick3'],
""    \ ['cyan',    'chocolate3'],
""    \ ['lightcyan',    'RoyalBlue3'],
""    \ ['red',   'RoyalBlue3'],

" PROFILING VIMSCRIPT:
" profile start
" profile file
"
" to profile vimrc:
" vim --cmd 'profile start vimrc.profile' --cmd 'profile! file
" ~/Dropbox/.vimrc' -c 'call func()'
"
" --cmd command executes command before loading vimrc
"  -c command executes command after vim loads
"  more funny than helpful
"colorscheme kolor
"colorscheme gruvbox
"colorscheme wombat256
"colorscheme retroWave
colorscheme myMustang
"colorscheme background
"let g:rainbow_ctermfgs = ['gray','lightgray']
let g:rainbow_ctermfgs = ['cyan','darkcyan','blue','darkblue','lightcyan']
"colorscheme jungle
"colorscheme mrRobot
"colorscheme myWords
"let g:rainbow_ctermfgs = ['lightgray','gray','darkgray','white']
"colorscheme skin
"colorscheme wombat256i
"colorscheme wombat256mod
"colorscheme mustang
"colorscheme mustang2
"colorscheme mustang5
"" colorscheme inkpot
"colorscheme leo
"
"colorscheme neonwave
"colorscheme flatland
"colorscheme inkpot
"colorscheme leo
"colorscheme distinguished
"colorscheme ir_black
" colorscheme flatland 
"colorscheme flatcolor
"colorscheme slate
"colorscheme seoul256
"colorscheme grb256
"" colorscheme Mustang_Vim_Colorscheme_by_hcalves
""    \ ['darkmagenta',   'RoyalBlue3'],
""    \ ['darkred',         'firebrick3'],
""    \ ['darkyellow',    'SeaGreen3'],
""    \ ['darkgreen',   'RoyalBlue3'],
""    \ ['darkcyan',    'RoyalBlue3'],
""    \ ['darkblue',    'firebrick3'],
"""    \ ['green',   'RoyalBlue3'],
""    \ ['blue',    'firebrick3'],
""    \ ['brown',       'RoyalBlue3'],
""    \ ['yellow',    'SeaGreen3'],
""    \ ['cyan',    'RoyalBlue3'],
"""    \ ['lightcyan',    'RoyalBlue3'],
"let g:rbpt_max = 13
"let g:rbpt_max = 9
"let g:rbpt_colorpairs = [
"    \ ['darkmagenta',   'RoyalBlue3'],
"    \ ['yellow',   'RoyalBlue3'],
"    \ ['darkred',   'RoyalBlue3'],
"    \ ['brown',    'SeaGreen3'],
"    \ ['magenta',    'RoyalBlue3'],
"    \ ['blue',    'firebrick3'],
"    \ ['cyan',    'chocolate3'],
"    \ ['lightcyan',    'RoyalBlue3'],
"    \ ['red',   'RoyalBlue3'],
"    \ ]
"let g:rbpt_colorpairs = [
"    \ ['darkred',         'firebrick3'],
"    \ ['darkblue',    'firebrick3'],
"    \ ['darkcyan',    'RoyalBlue3'],
"    \ ['darkgreen',    'chocolate3'],
"    \ ['darkyellow',   'RoyalBlue3'],
"    \ ['darkred',         'firebrick3'],
"    \ ['darkblue',    'firebrick3'],
"    \ ['darkcyan',    'RoyalBlue3'],
"    \ ['darkgreen',    'chocolate3'],
"    \ ['darkyellow',   'RoyalBlue3'],
"    \ ['darkred',         'firebrick3'],
"    \ ['blue',    'firebrick3'],
"    \ ['green',    'chocolate3'],
"    \ ['darkyellow',   'RoyalBlue3'],
"    \ ['red',         'firebrick3'],
"    \ ]
"autocmd VimEnter * RainbowParenthesesToggle
"autocmd Syntax * RainbowParenthesesLoadRound
"autocmd Syntax * RainbowParenthesesLoadSquare
"autocmd Syntax * RainbowParenthesesLoadBraces

"//<
""//$ "//$
"//%

"set foldlevel=2
set foldmethod=marker
set foldmarker=//$,//<
nnoremap <CR> Gza
"nnoremap J Jx
au BufEnter,BufNew *.html nnoremap =r %w <CR> :!chromium-browser "file://$(readlink -f %)" <CR><CR>

"au BufEnter * :normal GA
