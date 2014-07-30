"use pathogen
call pathogen#infect()

" colorscheme
set t_Co=256
set background=light
let g:solarized_termcolors=256
colorscheme wombat256

" syntax processing
syntax enable

" number of spaces per tab
set tabstop=4
" number of spaces in tab when editing
set softtabstop=4
" tabs are spaces
set expandtab

" disable swap file maker
set noswapfile

" show line numbers
set number
" show command in bottom bar
set showcmd
" highlight current line
"set cursorline

" load filetype-specific indent files
filetype indent on
" autocomplete for command menu
set wildmenu
" redraw only when need to (speed enhancer)
set lazyredraw
" highlight matching [{()}]
set showmatch

" search as characters entered
set incsearch
" highlight matches
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" enable folding
set foldenable
" open most folds by default
set foldlevelstart=10
" 10 nested fold max
set foldnestmax=10
"" set the fold method to markers not indentation
"foldmethod=marker
"" close folds by default
"foldlevel=0


" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]

" leader is comma
let mapleader=","
" jk is escape
inoremap jk <esc>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

let g:go_disable_autoinstall = 1

" toggle between number and relativenumber
function! ToggleNumber()
	if (&relativenumber == 1)
		set norelativenumber
		set number
	else
		set relativenumber
	endif
endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
	" save last search & cursor position
	let _s=@/
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	let @/=_s
	call cursor(l, c)
endfunction

" disable netrw from saving history or bookmarks
let g:netrw_dirhistmax=0
