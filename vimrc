set background=dark
""if has("autocmd") "用不上
""  filetype plugin indent on
""endif
set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden
set mouse=a

setlocal noswapfile " 不要生成swap文件
set bufhidden=hide " 当buffer被丢弃的时候隐藏它
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=2 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=2 " 设定 tab 长度为 4
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
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠

syntax enable
syntax on
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
set tags=/home/ics/tags


set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8

set nu
colorscheme my
""colorscheme strawberry-light

""if version >= 700 && &term != 'cygwin' && !has('gui_running')
""  " In the color terminal, try to use CSApprox.vim plugin or
""  " guicolorscheme.vim plugin if possible in order to have consistent
""  " colors on different terminals.
""  "
""  " Uncomment one of the following lines to force 256 or 88 colors if
""  " your terminal supports it. Or comment both of them if your terminal
""  " supports neither 256 nor 88 colors. Unfortunately, querying the
""  " number of supported colors does not work on all terminals.
""  set t_Co=256
""  "set t_Co=88
""  if &t_Co == 256 || &t_Co == 88
""    " Check whether to use CSApprox.vim plugin or guicolorscheme.vim plugin.
""    if has('gui') &&
""      \ (filereadable(expand("$HOME/.vim/plugin/CSApprox.vim")) ||
""      \  filereadable(expand("$HOME/vimfiles/plugin/CSApprox.vim")))
""      let s:use_CSApprox = 1
""    elseif filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim")) ||
""      \    filereadable(expand("$HOME/vimfiles/plugin/guicolorscheme.vim"))
""      let s:use_guicolorscheme = 1
""    endif
""  endif
""endif
""if exists('s:use_CSApprox')
""  " Can use the CSApprox.vim plugin.
""  let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
""  colorscheme tokyo-metro
""elseif exists('s:use_guicolorscheme')
""  " Can use the guicolorscheme plugin. It needs to be loaded before
""  " running GuiColorScheme (hence the :runtime! command).
""  runtime! plugin/guicolorscheme.vim
""  GuiColorScheme tokyo-metro
""else
""  colorscheme tokyo-metro
""endif

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim
set laststatus=2

imap <TAB> <C-X><C-N>
" 自动补全

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:rainbow_active = 1
let g:rainbow_conf = {
\ 'ctermfgs': ['51','219','230','111','99','33','201','118'],
\}

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

au VimLeave * silent mkview
au VimEnter * silent loadview
" 保存折叠

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

vnoremap y "ay
nnoremap y "ay
vnoremap p "ap
nnoremap p "ap
vnoremap d "ad
nnoremap d "ad
set pastetoggle=<F11>
