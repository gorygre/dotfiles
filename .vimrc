" Pathogen:
	execute pathogen#infect()

" Basics:
	set nocompatible
	syntax enable
	filetype plugin on
	filetype indent on
	set autoread
	set wildmenu
	if &history < 1000
		set history=1000
	endif
	set relativenumber
	set number
	set guioptions-=m  "remove menu bar
	set guioptions-=T  "remove toolbar
	set guioptions-=r  "remove right-hand scroll bar
	set guioptions-=L  "remove left-hand scroll bar
	set hlsearch
	set incsearch
	set nowrap
	colorscheme vividchalk
	set path+=**
	set timeoutlen=1000 ttimeoutlen=0

" Macros:
	let @p = 'T iprint_r(%i, true)'
	let @e = 'oerror_log('');hi'

" File Browsing:
	let g:netrw_banner=0        " disable annoying banner
	let g:netrw_browse_split=4  " open in prior window
	let g:netrw_altv=1          " open splits to the right
	let g:netrw_liststyle=3     " tree view
	let g:netrw_list_hide=netrw_gitignore#Hide()
	let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
	let g:netrw_winsize=75

" SNIPPETS:

	" Read an empty HTML template and move cursor to title
	nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

" Status Line:
	set laststatus=2
	let g:ctags_statusline=1
	let g:ctags_regenerate=0
	let g:ctags_args='--languages=PHP'

" Commands:
	command Cdc cd %:p:h
	command Cldc lcd %:p:h

" Mappings:
	nnoremap <C-h> <C-w>h
	execute "set <M-h>=\eh"
	nnoremap <M-h> <C-w>h<C-w><Bar>^
	nnoremap <C-j> <C-w>j
	execute "set <M-j>=\ej"
	nnoremap <M-j> <C-w>j<C-w>=
	nnoremap <C-k> <C-w>k
	execute "set <M-k>=\ek"
	nnoremap <M-k> <C-w>k<C-w>=
	nnoremap <C-l> <C-w>l
	execute "set <M-l>=\el"
	nnoremap <M-l> <C-w>l<C-w><Bar>^
