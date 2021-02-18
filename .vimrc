filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'taglist.vim'
Plugin 'SrcExpl'
Plugin 'AutoComplPop'

call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au GUIEnter * simalt ~x

let NERDTreeWinPos = "left"
let Tlist_Use_Right_Window = 1

autocmd VimEnter * NERDTree
autocmd VimEnter * Tlist

set guioptions -=m
"set guioptions -=T

cd C:\Users\shin\ps

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" text related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set viminfo=
set backspace=indent,eol,start
set number
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Consolas
color koehler

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
inoremap {<CR> {<CR>}<Esc>ko

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" c++ template
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" If the file is new, load a template if we have one,
" delete the extra newline at EOF and place cursor on line 1.
autocmd BufNewFile * silent! 0r $HOME/ps/templates/%:e.tpl
autocmd BufNewFile * $d
autocmd BufNewFile * 8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" c++ compile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F5> <ESC>:w<CR>:!g++ -g -Wall -Wl,--stack=268435456 --std=c++14 -O2 %:r.cpp -o %:r && %:r
map <F6> <ESC>:w<CR>:!g++ -g -Wall --std=c++14 -O2 %:r.cpp -o %:r && %:r < %:r.in<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F7> :NERDTreeToggle<CR>
map <F8> :TlistToggle<CR>