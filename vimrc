" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
" https://www.cnblogs.com/ajanuw/p/9270359.html
" sudo apt install ncurses-dev
" wget https://github.com/vim/vim/archive/master.zip
" unzip master.zip
" cd vim-master
" cd src/
" ./configure --enable-pythoninterp=yes
" make
" sudo make install
" :scriptnames

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" normal config
let mapleader = ","
se nu
syntax on
set backspace=2
set hlsearch
set cursorline

" if you get tips: can not find pacakges blabla..., use the next line
" let $GOPATH=<the full path of the $GOPATH>




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://realpython.com/vim-and-python-a-match-made-in-heaven/
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

Plugin 'davidhalter/jedi-vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jedi-vim
" Settings
" Jedi is by default automatically initialized. If you don't want that I suggest you disable the auto-initialization in your .vimrc:
" let g:jedi#auto_initialization = 0

" There are also some VIM options (like completeopt and key defaults) which are automatically initialized, but you can skip this:
" let g:jedi#auto_vim_configuration = 0

" You can make jedi-vim use tabs when going to a definition etc:
" let g:jedi#use_tabs_not_buffers = 1

" If you are a person who likes to use VIM-splits, you might want to put this in your .vimrc:
" let g:jedi#use_splits_not_buffers = "left"

" This options could be "left", "right", "top", "bottom" or "winwidth". It will decide the direction where the split open.

" Jedi automatically starts the completion, if you type a dot, e.g. str., if you don't want this:
" let g:jedi#popup_on_dot = 0

" Jedi selects the first line of the completion menu: for a better typing-flow and usually saves one keypress.
" let g:jedi#popup_select_first = 0

" Jedi displays function call signatures in insert mode in real-time, highlighting the current argument. The call signatures can be displayed as a pop-up in the buffer (set to 1, the default), which has the advantage of being easier to refer to, or in Vim's command line aligned with the function call (set to 2), which can improve the integrity of Vim's undo history.
let g:jedi#show_call_signatures = "1"

" Here are a few more defaults for actions, read the docs (:help jedi-vim) to get more information. If you set them to "", they are not assigned.
" NOTE: subject to change!

let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

" Finally, if you don't want completion, but all the other features, use:
" let g:jedi#completions_enabled = 0


Plugin 'scrooloose/nerdtree'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-e toggle nerdtree
map <silent> <C-e> :NERDTreeToggle<CR>
" ,e focus nerdtree
map <leader>e :NERDTreeFind<CR>

Plugin 'kien/ctrlp.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Plugin 'tpope/vim-fugitive'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
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

Plugin 'majutsushi/tagbar'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" sudo apt-get install exuberant-ctags
nnoremap <silent> <leader>tt :TagbarToggle<CR>

Plugin 'easymotion/vim-easymotion'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CMD: <leader><leader>w

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

Plugin 'google/vim-colorscheme-primary'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set t_Co=256
" set background=dark
" colorscheme primary

Plugin 'sts10/vim-pink-moon'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'morhetz/gruvbox'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme gruvbox
" set background=dark

Plugin 'altercation/vim-colors-solarized'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized

Plugin 'fatih/vim-go'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" to install need execting: :GoInstallBinaries
" jump to the definition
map <leader>d <C-]>
map <leader>doc :GoDoc<CR>

" Plugin 'Valloric/YouCompleteMe'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" :PluginInstall
" cd .vim/bundle/YouCompleteMe && python install.py --go-completer

