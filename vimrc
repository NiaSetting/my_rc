set background=dark
set showcmd
set showmatch
set ignorecase
set smartcase
set smartindent
set incsearch
set autowrite
set hidden
set mouse=a

setlocal noswapfile " 不要生成swap文件
set bufhidden=hide " 当buffer被丢弃的时候隐藏它
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=2 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=2 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=2 " 设定 tab 长度为 2
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes " 设置备份时的行为为覆盖
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息
set foldenable " 开始折叠
set foldmethod=syntax " 设置语法折叠
set foldcolumn=0 " 设置折叠区域的宽度
setlocal foldlevel=1 " 设置折叠层数为 1
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠

syntax enable
syntax on
colorscheme my

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030
source $VIMRUNTIME/delmenu.vim " gvim菜单乱码
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8

" if version >= 700 && &term != 'cygwin' && !has('gui_running')
"   " In the color terminal, try to use CSApprox.vim plugin or
"   " guicolorscheme.vim plugin if possible in order to have consistent
"   " colors on different terminals.
"   "
"   " Uncomment one of the following lines to force 256 or 88 colors if
"   " your terminal supports it. Or comment both of them if your terminal
"   " supports neither 256 nor 88 colors. Unfortunately, querying the
"   " number of supported colors does not work on all terminals.
"   set t_Co=256
"   "set t_Co=88
"   if &t_Co == 256 || &t_Co == 88
"     " Check whether to use CSApprox.vim plugin or guicolorscheme.vim plugin.
"     if has('gui') &&
"       \ (filereadable(expand("$HOME/.vim/plugin/CSApprox.vim")) ||
"       \  filereadable(expand("$HOME/vimfiles/plugin/CSApprox.vim")))
"       let s:use_CSApprox = 1
"     elseif filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim")) ||
"       \    filereadable(expand("$HOME/vimfiles/plugin/guicolorscheme.vim"))
"       let s:use_guicolorscheme = 1
"     endif
"   endif
" endif
" if exists('s:use_CSApprox')
"   " Can use the CSApprox.vim plugin.
"   let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
"   colorscheme tokyo-metro
" elseif exists('s:use_guicolorscheme')
"   " Can use the guicolorscheme plugin. It needs to be loaded before
"   " running GuiColorScheme (hence the :runtime! command).
"   runtime! plugin/guicolorscheme.vim
"   GuiColorScheme tokyo-metro
" else
"   colorscheme tokyo-metro
" endif

set rtp+=/home/lynx/.local/lib/python2.7/site-packages/powerline/bindings/vim
set laststatus=2

" vim-plug =================================================
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'jisaacks/GitGutter'
Plug 'luochen1990/rainbow'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" ============================================================

let g:rainbow_active = 1
let g:rainbow_conf = {
\ 'ctermfgs': ['51','219','230','111','99','33','201','118'],
\}

" gitgutter ===================================================
let g:gitgutter_max_signs=6000
let g:gitgutter_sign_added='++'
let g:gitgutter_sign_removed='->'
let g:gitgutter_sign_modified='~~'
let g:gitgutter_sign_removed_first_line='=>'
let g:gitgutter_sign_modified_removed='+>'
set updatetime=400

""let g:gitgutter_overide_sign_column_highlight=1
""highlight SignColumn ctermbg=0
""if exists('&signcolumn')  " Vim 7.4.2201
""  set signcolumn=yes
""else
""  let g:gitgutter_sign_column_always = 1
""endif

au VimEnter * :GitGutterLineHighlightsEnable
hi GitGutterAdd ctermfg=darkgreen ctermbg=232 cterm=BOLD
" an added line
hi GitGutterChange ctermfg=lightblue ctermbg=232 cterm=BOLD
" a changed line
hi GitGutterDelete ctermfg=1 ctermbg=232 cterm=BOLD
" at least one removed line
hi GitGutterChangeDelete ctermfg=yellow ctermbg=232 cterm=BOLD
" a changed line followed by at least one removed line
highlight GitGutterAddLine ctermfg=none ctermbg=232
" default: links to DiffAdd
highlight GitGutterChangeLine ctermfg=none ctermbg=232
" default: links to DiffChange
highlight GitGutterDeleteLine ctermfg=none ctermbg=232
" default: links to DiffDelete
highlight GitGutterChangeDeleteLine ctermfg=none ctermbg=232
" default: links to GitGutterChangeLineDefault, i.e. DiffChange
" ======================================================

vnoremap y "ay
nnoremap y "ay
vnoremap p "ap
nnoremap p "ap
vnoremap d "ad
nnoremap d "ad
set pastetoggle=<F10>

" vim-latex ============================================
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
let g:Tex_ViewRule_pdf = 'evince'

" 2019/2/20 vundle ===================================
set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加
" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
" Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
" Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
" Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
" Plugin 'ascenator/L9', {'name': 'newL9'}
" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype indent plugin on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:

" ctags =============================
set tags=tags;
set autochdir
" ==================================

" 自动补全
inoremap jk <esc>
let mapleader=";"
nnoremap <c-a> ggVG
noremap <c-c> "+Y
vnoremap <c-c> "+Y
inoremap <c-v> <esc>"+Pi
inoremap <leader>w <esc>O
inoremap <leader>s <esc>o
inoremap <tab> <c-x><c-n>

iabbrev mian main
iabbrev itn int
iabbrev fro for
iabbrev pf printf
iabbrev wl while
iabbrev db double
iabbrev sf scanf

au VimLeave * silent mkview
au VimEnter * silent loadview
" 保存折叠
au FileType c,cpp,java nnoremap <leader>s I// <esc>
au FileType c,cpp,java vnoremap <leader>s <home>I// <esc><esc>
au FileType vim nnoremap <leader>s I" <esc>
au FileType vim vnoremap <leader>s <home>I" <esc><esc>
au FileType python nnoremap <leader>s I# <esc>
au FileType python vnoremap <leader>s <home>I# <esc><esc>
