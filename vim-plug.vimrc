"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" normal config
let mapleader = ","
se nu
syntax on
set backspace=2
set hlsearch
set cursorline
set cursorcolumn
set nocp
filetype plugin on
filetype plugin indent on
set ofu=syntaxcomplete#Complete


call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Ctrl-e toggle nerdtree
map <silent> <C-e> :NERDTreeToggle<CR>
" ,e focus nerdtree
map <leader>e :NERDTreeFind<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'xuyuanp/nerdtree-git-plugin'
" let g:NERDTreeIndicatorMapCustom = {
"    \ "Modified"  : "✹",
"    \ "Staged"    : "✚",
"    \ "Untracked" : "✭",
"    \ "Renamed"   : "➜",
"    \ "Unmerged"  : "═",
"    \ "Deleted"   : "✖",
"    \ "Dirty"     : "✗",
"    \ "Clean"     : "✔︎",
"    \ 'Ignored'   : '☒',
"    \ "Unknown"   : "?"
"    \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'tag': '*' }
" jump to the definition
map <leader>d <C-]>
map <leader>doc :GoDoc<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" go代码提示
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
imap <tab><tab> <c-x><c-o>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gvdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
" Mnemonic _i_nteractive
nnoremap <silent> <leader>gi :Git add -p %<CR>
nnoremap <silent> <leader>gg :SignifyToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'airblade/vim-gitgutter'
" let g:gitgutter_terminal_reports_focus=0
" nnoremap <silent> <leader>gt ::GitGutterBufferToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'majutsushi/tagbar'
" sudo apt-get install exuberant-ctags
nnoremap <silent> <leader>tt :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'easymotion/vim-easymotion'
" CMD: <leader><leader>w

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
" sudo apt-get install fonts-powerline
" air-line
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" https://github.com/vim-airline/vim-airline-themes/tree/master/autoload/airline/themes
" let g:airline_theme='gruvbox'
" let g:airline_theme='base16_solarized'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'altercation/vim-colors-solarized'
" mkdir -p ~/.vim/colors && cp ~/.vim/plugged/vim-colors-solarized/colors/solarized.vim ~/.vim/colors/solarized.vim
set background=dark
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'Valloric/YouCompleteMe'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'tpope/vim-surround'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'justinmk/vim-sneak'
" sab -> 搜索ab | ; -> 下一个
" let g:sneak#label = 1

call plug#end()
