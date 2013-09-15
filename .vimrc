
set nocompatible

" deactivation of automatic detection
filetype off

" add a vim path for vundle directory
set rtp+=~/.vim/bundle/vundle/

" execute vundle
call vundle#rc()


" Plugins

" vundle
Bundle 'gmarik/vundle'

" peaksea -> color plugin
Bundle 'peaksea'


set background=dark
colorscheme peaksea

" Activation of automatic indentation if automatic commands are activated
" -----------------------------------------------------------------------
if has("autocmd") 
  filetype plugin indent on  
endif  
