filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin on
" filetype plugin comments on

set cindent

set nocompatible
filetype plugin indent on
let clj_highlight_builtins = 1

set showmatch

set tabstop=4
set shiftwidth=4
set noexpandtab
set softtabstop=4

syntax on

set incsearch
set hlsearch

set mouse=a
set virtualedit=all

set wildmode=longest:full
set wildmenu

if (has("gui_running"))
    set guioptions=-M
	set guifont=Bitstream\ Vera\ Sans\ Mono\ 10 
	" set transparency=15
	" colorscheme spectro
    colorscheme Monokai2
	"echo version
	if version >= 700
		" set cursorline
		if version >= 703
			set relativenumber
			set undofile
		else
			set number
		endif
	endif
else
	set number
endif

set spell

" set autochdir

nmap <TAB> ==
vmap <TAB> =
" Try the following so Shift-Space also enters insert mode.
nmap <S-Space> i
" Or just Space to enter insert mode.
nmap <Space> i

nmap <S-Enter> o<Esc>
" inoremap ;; <Esc>
inoremap jj <ESC>
inoremap kk <ESC>

" map for switching splits
map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>
map <C-L> <C-W>l<C-W>
map <C-H> <C-W>h<C-W>

" set timeout or key mappings - :help timeout
set tm=500

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

call omni#cpp#complete#Init()
let OmniCpp_MayCompleteScope = 1


" ignore case, unless an uppercase is used
set ignorecase
set smartcase


" status bar
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]


" cd to the directory containing the file in the buffer
nmap <silent> ,cd :lcd %:h<CR>
nmap <silent> ,md :!mkdir -p %:p:h<CR>



" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Keep some stuff in the history
set history=1000

" Javascript
" " ----------
let javascript_enable_domhtmlcss=1

let g:closetag_default_xml=1
let g:closetag_html_style=1
au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim

" LATEX PLUGIN
" IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'
