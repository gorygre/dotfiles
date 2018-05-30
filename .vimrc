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

" Indenting:
	set nowrap
	set smarttab
	set smartindent

" File Browsing:
	let g:netrw_banner=0        " disable annoying banner
	let g:netrw_browse_split=4  " open in prior window
	let g:netrw_altv=1          " open splits to the right
	let g:netrw_liststyle=3     " tree view
	let g:netrw_list_hide=netrw_gitignore#Hide()
	let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
	let g:netrw_winsize=75

" TAG JUMPING:

	" Create the `tags` file (may need to install ctags first)
	command! MakeTags !ctags -R .

	" NOW WE CAN:
	" ^ == CTRL ie below is CTRL-]
	" - Use ^] to jump to tag under cursor
	" - Use g^] for ambiguous tags
	" - Use ^t to jump back up the tag stack

	" THINGS TO CONSIDER:
	" - This doesn't help if you want a visual list of tags

" AUTOCOMPLETE:

	" The good stuff is documented in |ins-completion|

	" HIGHLIGHTS:
	" - ^x^n for JUST this file
	" - ^x^f for filenames (works with our path trick!)
	" - ^x^] for tags only
	" - ^n for anything specified by the 'complete' option

	" NOW WE CAN:
	" - Use ^n and ^p to go back and forth in the suggestion list

" SNIPPETS:

	" Read an empty HTML template and move cursor to title
	nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

	" NOW WE CAN:
	" - Take over the world!
	"   (with much fewer keystrokes)

	colorscheme vividchalk

" Airline:
	set laststatus=2
	set ttimeoutlen=50
	let g:airline#extensions#tabline#enabled = 1

" Commands:
	command Cdc cd %:p:h
	command Cldc lcd %:p:h

" Mappings:
	nnoremap <C-h> <C-w>h
	nnoremap <C-j> <C-w>j
	nnoremap <C-k> <C-w>k
	nnoremap <C-l> <C-w>l
