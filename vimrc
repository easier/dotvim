set nocompatible    " be iMproved
filetype off        " required!
set nobackup

" let Vundle manage Vundle
" required!

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" vim-scripts repos
Bundle 'gmarik/vundle'
"Bundle 'snipMate'
Bundle 'mattn/emmet-vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'junegunn/goyo.vim'
Bundle 'jQuery'
Bundle 'ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'ctrlp.vim'
Bundle 'colorselector'
Bundle 'vim-less'
Bundle "Lokaltog/vim-powerline"
Bundle "qpkorr/vim-bufkill"
Bundle "edsono/vim-matchit"
Bundle "tpope/vim-surround"
Bundle "scrooloose/nerdcommenter"
Bundle "mhinz/vim-startify"
"Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"

"Bundle 'TabBar'
"Bundle 'bling/vim-airline'
"Bundle 'minibufexpl.vim'



" 开启语法高亮
syntax on


" 配色
set t_Co=25b
colorscheme molokai

filetype plugin indent on    " required!

"set fillchars+=stl:\ ,stlnc:\


set laststatus=2
"let g:Powerline_symbols='unicode'
let g:Powerline_symbols = 'fancy'
let Powerline_symbols='compatible'


" -------------------------- 配色 -------------------------
"显示行号
set nu

set t_Co=256
hi Normal ctermbg=NONE

"同意成系统剪切板
set clipboard=unnamed

"切换toggle
set pastetoggle=<F9>

"自动缩排
set autoindent

"set showtabline=1
"set guioptions=e
noremap <D-1> :tabn 1<CR>
noremap <D-2> :tabn 2<CR>
noremap <D-3> :tabn 3<CR>
noremap <D-4> :tabn 4<CR>
noremap <D-5> :tabn 5<CR>
noremap <D-6> :tabn 6<CR>
noremap <D-7> :tabn 7<CR>
noremap <D-8> :tabn 8<CR>
noremap <D-9> :tabn 9<CR>

"是否显示标尺
set ruler

"更改配色方案
set background=dark

" 设置代码缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab "设置tab自动替换为空格
"设置tab和空格的显示字符
"set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<

"setup nerdtree 
let NERDTreeWinPos = 'left'
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
set guioptions-=L
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore = ['\.pyc$','node_modules','dist','design']

"设置ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|design)|(\.(swp|ico|git|svn|jpg|png|gif))$'

"设置ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" highlight current line
set cursorline
set cursorcolumn

au BufRead,BufNewFile *.js set syntax=jquery

map <s-tab> :bp<cr>
map <tab> :bn<cr>

"map ,q :q!<CR>
"map ,w :w<CR>
"map :W :w<CR>
"map ,s :wq<CR>
nnoremap <Left> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Right> <nop>
"inoremap <Left> <nop>
"inoremap <Up> <nop>
"inoremap <Down> <nop>
"inoremap <Right> <nop>
nmap <Space> viw

inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-h> <left>
"set Tab as emmet's trigger 
"let g:user_emmet_leader_key = '<Tab>'
"let g:use_emmet_complete_tag = 1
