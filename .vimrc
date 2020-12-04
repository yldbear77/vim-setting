set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'
Plugin 'taglist.vim'
Plugin 'SrcExpl'
Plugin 'AutoComplPop'

call vundle#end()
filetype plugin indent on

let NERDTreeWinPos = "left"
let Tlist_Use_Right_Window = 1

set number
set tabstop=4
set shiftwidth=4

autocmd VimEnter * NERDTree
autocmd VimEnter * Tlist

map <F5> :call CompileAndRun()<CR>
func! CompileAndRun()
	exec "w"
	if &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	endif
endfunc

map <F7> :NERDTreeToggle<CR>
map <F8> :TlistToggle<CR>