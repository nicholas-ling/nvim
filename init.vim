" vim
set nocompatible 
set noro
set relativenumber 
set number
set clipboard=unnamed  " use the clipboards of vim and win
set tabstop=2 shiftwidth=2 expandtab
filetype plugin indent on    " required
syntax on
set undofile
set undodir=~/.vim/undo/
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" vim-plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'sebdah/vim-delve'
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'ervandew/supertab'
call plug#end()

" vim-delve
map <Leader>B :DlvToggleBreakpoint<CR>
map <Leader>D :DlvDebug<CR>

" deoplete
let g:deoplete#enable_at_startup = 1

" NERDTree
:set mouse=a
let g:NERDTreeMouseMode=3 
map ,, :NERDTreeToggle<CR>
map ,. :NERDTreeFind<CR>
nnoremap ,/ :UndotreeToggle<cr>
let NERDTreeAutoDeleteBuffer = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Markdown
let g:vim_markdown_folding_disabled = 1
let vim_markdown_preview_github=1

" easymotion
map <Leader> <Plug>(easymotion-prefix)

" vim go
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_auto_sameids = 1
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>i <Plug>(go-info)
autocmd FileType go nmap <leader>r :w<CR>:vsplit <bar> terminal go run %<CR>
