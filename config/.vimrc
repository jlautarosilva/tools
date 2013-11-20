set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
" The bundles you install will be listed here

filetype plugin indent on

" The rest of your config follows here

"Highlught excess line length
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
augroup END

" Powerline setup
 set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
 set laststatus=2

"NerdTree F2
"map  :NERDTreeToggle

" Use l to toggle display of whitespace
nmap l :set list!
" And set some nice chars to do it with
set listchars=tab:»\ ,eol:¬

" automatically change window's cwd to file's dir
set autochdir

" I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab

" more subtle popup colors
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold
endif
