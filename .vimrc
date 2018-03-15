" Package manager
call pathogen#infect()

" Ignore folders in CTRL-P

let g:ctrlp_custom_ignore = '\v[\/](node_modules|bower_components|target|dist)|(\.(swp|ico|git|svn))$'

" Apply changes on file save, this works except on plugin install
augroup vimscript                                                        
    autocmd!                                                             
    autocmd BufWritePost $MYVIMRC source $MYVIMRC                        
augroup END

" Key bindings
nnoremap <C-m> :NERDTreeToggle<CR>

" Syntax
syntax on
colorscheme monokai
set t_Co=256  " vim-monokai now only support 256 colours in terminal.

let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

set relativenumber

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Highlight matches
" switch higlight no matter the previous state
nmap <F4> :set hls! <cr>
" " hit '/' highlights then enter search mode
nnoremap / :set hlsearch<cr>/

" $MYVIMRC

let NERDTreeShowHidden=1

highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)
