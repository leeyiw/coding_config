execute pathogen#infect()

"设置屏幕为256色
set t_Co=256
"设置自动补全颜色
hi Pmenu ctermbg=black ctermfg=white
hi PmenuSel ctermbg=red ctermfg=white
"设置折叠颜色
hi Folded ctermfg=241 ctermbg=NONE
"设置搜索高亮的颜色
hi Search ctermfg=0
"当前行背景色高亮
hi CursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=black guifg=NONE

"设置编码为utf8
set encoding=utf8
"设置屏幕显示编码为utf8
set termencoding=utf8

"设置自动高亮
syntax on
syntax enable
"设置为增强模式，不兼容vi
set nocompatible
"设置底部状态栏
set laststatus=2
"设置行号
set number
"设置tab宽度为4
set tabstop=4
"设置tab键用空格替换
"set expandtab
"设置<<与>>的缩进和tabstop相同
set shiftwidth=4
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
set colorcolumn=80

"自动补全{}
inoremap { {}<LEFT>
"自动补全[]
inoremap [ []<LEFT>
"自动补全()
inoremap ( ()<LEFT>
"自动补全""
inoremap " ""<LEFT>
"自动补全''
inoremap ' ''<LEFT>

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

"按F5自动使用Makefile编译
nnoremap <F5> :make clean;make<CR>

"NERDTree{
let NERDTreeWinSize=30
let NERDTreeWinPos='right'
let NERDTreeShowHidden=0
nnoremap <F4> :NERDTreeToggle<CR>
"}

"powerline{
let g:Powerline_symbols='fancy'
"}

"a.vim{
nnoremap <F12> :AS<CR><C-W>5+
"}

"taglist{
let Tlist_WinWidth=30
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_Close_On_Select=1
nnoremap <silent> <F8> :TlistToggle<CR>
"}

"for python{
autocmd FileType python call PythonSetting()
function PythonSetting()
	setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
	let g:indent_guides_auto_colors = 0
	let g:indent_guides_guide_size = 1
	let g:indent_guides_start_level = 2
	let g:indent_guides_enable_on_vim_startup = 1
	autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=darkgrey
	autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=grey
	IndentGuidesEnable
	"for pydiction{
	let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
	"}
endfunction
"}

"for html{
autocmd FileType html call HTMLSetting()
autocmd FileType xml call HTMLSetting()
function HTMLSetting()
	"自动补全<>
	inoremap < <><LEFT>
endfunction
"}

"for Omni{
filetype plugin on
set completeopt=menu
set path+=/usr/include/x86_64-linux-gnu
set tags+=$HOME/coding_config/stl.tags
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_MayCompleteScope = 1
noremap <c-]> g<c-]>
"}

"for solarized{
set background=dark
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
colorscheme solarized
"}
