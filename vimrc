set t_Co=256										" 256 color mode
set encoding=utf-8									" encoding utf-8
set nocompatible									" not compatible with the old-fashion vi mode
set nobackup nowritebackup noswapfile autoread      " no backup or swap, autoread file when external edited
set hlsearch incsearch ignorecase smartcase         " search
set ruler                                           " show cursor position in status bar
set number                                          " show absolute line number of the current line
set hidden											" disable unloading of buffers
set timeoutlen=1000 ttimeoutlen=10					" set shorter delays
set noshowmode										" remove current mode status
set nofoldenable                                    " disable code folding
set tabpagemax=50									" set maximum number of tabs
set scrolloff=10                                    " scroll the window so we can always see 10 lines around the cursor
set winaltkeys=no                                   " turn off alt shortcuts

" auto reload vimrc when editing it
autocmd! BufWritePost .vimrc source ~/.vimrc

" disable annoying sound on errors
set noerrorbells
set novisualbell
set vb t_vb=

syntax on
filetype plugin indent on

" TAG JUMPING:
" " Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .
" " NOW WE CAN:
" " - Use ^] to jump to tag under cursor
" " - Use g^] for ambiguous tags
" " - Use ^t to jump back up the tag stack

" set netrw defaults
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

" set ident defaults
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" set column identifier
set colorcolumn=110

"
" Themes
"
" Install themes in = ~/.vim/colors/

" Jellybeans
"
" https://github.com/nanotech/jellybeans.vim.git
"
colorscheme jellybeans								" set colorscheme

"
" Plugins
"
" Install plugins in = ~/.vim/pack/plugins/start/

" YouCompleteMe
"
" sudo apt-get install build-essential cmake python-dev python3-dev
" https://github.com/Valloric/YouCompleteMe.git
" ./install.py --clang-completer
"
nnoremap <leader>jd :YcmCompleter GoTo<CR>
let g:ycm_complete_in_comments=1				" turn on completion in comments
let g:ycm_confirm_extra_conf=0					" load ycm config by default
let g:ycm_collect_identifiers_from_tags_files=1	" turn on tag completion
set completeopt-=preview						" only show completion as a list instead of a sub-window
let g:ycm_min_num_of_chars_for_completion=3		" start completion from the first character
let g:ycm_cache_omnifunc=0						" don't cache completion items
let g:ycm_seed_identifiers_with_syntax=1		" complete syntax keywords

" Airline
"
" https://github.com/vim-airline/vim-airline.git
" https://github.com/tpope/vim-fugitive.git
" https://github.com/ctrlpvim/ctrlp.vim.git
" https://github.com/craigemery/vim-autotag.git
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0	" don't count whitespaces

