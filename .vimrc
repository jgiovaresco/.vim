"##############################################################"
" vim: set foldmarker={,} foldlevel=0 foldmethod=marker :
"
" Vim Configuration
"
" Julien Giovaresco.
"
" My personal Vim configuration.
"##############################################################"

" General Settings {
	
	set nocompatible

	" no bakcup
	set nobackup
	set nowritebackup
	set noswapfile

	set ffs=unix,dos,mac    " Try recognizing dos, unix, and mac line endings.
 
	" ignore these files when completing names and in explorer
	set wildignore+=.svn,CVS,.git,.hg
	set wildignore+=*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp
	set wildignore+=*.jpg,*.png,*.xpm,*.gif

	set wildmenu            " Menu completion in command mode on <Tab>
	set wildmode=full       " <Tab> cycles between all matching choices.

	set shell=$SHELL        " use current shell for shell commands
	set hidden              " enable multiple modified buffers
	set history=1000
	set autoread            " automatically read feil that has been changed on disk and doesn't have changes in vim
	set backspace=indent,eol,start

	" search options
	set incsearch           " Incremental search
	set hlsearch            " Highlight search match
	set ignorecase          " Do case insensitive matching
	set smartcase           " do not ignore if search pattern has CAPS

	" Setup Bundle Support {
		" deactivation of automatic detection
		filetype off

		" add a vim path for vundle directory
		set rtp+=~/.vim/bundle/vundle/

		" execute vundle
		call vundle#rc()

		" required plugin
		Bundle 'gmarik/vundle'

	" }
" }

" Spell Checking {

	set nospell
	set spelllang=en,fr
	set spellsuggest=5

	" highlight spell errors
	hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black
	" toggle spell check with F7
	map <F7> :setlocal spell! spell?<CR>

" }

" Formatting {
	
	" Tabs settings
	set expandtab
	set tabstop=4
	set shiftwidth=4

	" Automatic Indentation
	set autoindent
	set smartindent          " use smart indent if there is no indent file
	
	set shiftwidth=4         " an indent level is 2 spaces wide.

" }

" Programming Settings {
	
	" Syntax
    syntax on

" }

" External Configurations {

	" Load Bundles
	source ~/.vim/.bundles.vim

	" Plugins Settings
	source ~/.vim/.plugins.vim

	" Functions
	source ~/.vim/.functions.vim

" }


" Vim UI {

	set background=dark
	colorscheme peaksea

	set scrolloff=3         " Keep 3 context lines above and below the cursor

	set number              " precede each line with its line number
	set textwidth=0         " Do not wrap words (insert)
	set nowrap              " Do not wrap words (view)
	set linebreak           " Do not wrap textin the middle of a word
	set showcmd             " Show (partial) command in status line.
	set showmatch           " Show matching brackets.
	set matchpairs+=<:>     " show matching <> (html mainly) as well
	set visualbell          " use visual bell instead of beeping
	set cursorline
	set ruler               " show the cursor position all the time
	set list                " caractere $ en fin de ligne
	set listchars=tab:→\ ,trail:▸

	set confirm             " Y-N-C prompt if closing with unsaved changes.
	set report=0            " : commands always print changed line count.

	" Statusline
	set laststatus=2
	set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [ASCII=\%03.3b\ HEX=\%02.2B]\ [POS=%04l,%04v\ %p%%\ %L]

	set ts=4                " number of spaces in a tab

" }
