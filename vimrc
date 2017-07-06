set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/a.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'taglist.vim'
Plugin 'SirVer/ultisnips'
Plugin 'leeyiw/vim-snippets'
Plugin 'nickhutchinson/vim-systemtap'
Plugin 'vim-scripts/DeleteTrailingWhitespace'
Plugin 'Valloric/YouCompleteMe'
Plugin 'elzr/vim-json'

" All of your Plugins must be added before the following line
call vundle#end()             " required
filetype plugin indent on     " required


"for YCM{
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_key_list_select_completion = ['<C-N>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-P>', '<Up>']
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_error_symbol = '✗'
let g:ycm_confirm_extra_conf = 0
"let g:ycm_python_binary_path = '/usr/local/bin/python3'
set completeopt-=preview
"}
"

"for solarized{
set background=dark
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
colorscheme solarized
"}

"airline{
let g:airline_powerline_fonts = 1
"}

"NERDTree{
let NERDTreeWinSize=30
let NERDTreeWinPos='right'
let NERDTreeShowHidden=0
nnoremap <F4> :NERDTreeToggle<CR>
"}

"taglist{
let Tlist_WinWidth=30
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_Close_On_Select=1
nnoremap <silent> <F8> :TlistToggle<CR>
"}

"UltiSnips{
"}

"DeleteTrailingWhitespace{
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'ask'
"}


"设置屏幕为256色
set t_Co=256
"设置自动补全颜色
hi Pmenu ctermbg=black ctermfg=white
hi PmenuSel ctermbg=red ctermfg=white
"设置折叠颜色
hi Folded ctermfg=241 ctermbg=NONE
"当前行背景色高亮
hi CursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NONE

"设置编码为utf8
set encoding=utf8
"设置文件探测编码
set fileencodings=utf8,gbk
"设置屏幕显示编码为utf8
set termencoding=utf8

"设置自动高亮
syntax on
syntax enable
"设置搜索不高亮
set nohlsearch
"设置为增强模式，不兼容vi
set nocompatible
"设置底部状态栏
set laststatus=2
"设置行号
set number
"设置tab宽度为4
set tabstop=4
"设置tab键用空格替换
set expandtab
"设置<<与>>的缩进和tabstop相同
set shiftwidth=4
"设置softtabstop
set softtabstop=4
"设置增强型自动补全
set wildmenu
"设置自动缩进
set autoindent
"设置C模式缩进
"set cindent
"设置鼠标开启
"set mouse=a
"设置折叠栏启用
set foldenable
"设置折叠栏宽度
set foldcolumn=0
"设置格式化折叠
set foldmethod=indent
"设置折叠层数
set foldnestmax=3
"设置增量搜索
set incsearch
"设置搜索忽略大小写
"set ignorecase
"设置当前行高亮
set cursorline
"设置高亮80列
if exists('+colorcolumn')
	set colorcolumn=80
endif
"设置Vim7.4下正常使用backspace键
set backspace=2

"用CTRL-H替换向左切换tab
nmap  gT
"用CTRL-H替换向左切换tab
imap  <ESC>gT
"用CTRL-L替换向右切换tab
nmap  gt
"用CTRL-L替换向右切换tab
imap  <ESC>gt

"用SHIFT-H替换向左切换分屏
nmap H h
"用SHIFT-J替换向下切换分屏
nmap J j
"用SHIFT-K替换向上切换分屏
nmap K k
"用SHIFT-L替换向右切换分屏
nmap L l

"用SHIFT+Z替换切换折叠状态za
nmap Z za

"自动保存视图
"au BufWinLeave * silent mkview
"自动加载视图
"au BufWinEnter * silent loadview

autocmd Filetype cpp setlocal tabstop=2 softtabstop=2 shiftwidth=2

set clipboard=unnamed
