" PA默认设置 ===============================
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
set shiftwidth=2 " 设定 << 和 >> 命令移动时的宽度为?
set softtabstop=2 " 使得按退格键时可以一次删掉?个空格
" set tabstop=2 " 设定 tab 长度为 2
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

" 自定义设置 ===================================
set expandtab " 不使用tab缩进
set noignorecase " 便于补全精准

syntax enable
syntax on
colorscheme my " 魔改的tokyo-metro

" 解决中文乱码 ==================================
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030
source $VIMRUNTIME/delmenu.vim " gvim菜单乱码
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8

" powerline========================
set rtp+=/home/lynx/.local/lib/python3.7/site-packages/powerline/bindings/vim

" vim-plug =================================================
call plug#begin('~/.vim/plugged')
Plug 'luochen1990/rainbow'
Plug 'darkin-blade/vim-sb-complete2'
Plug 'airblade/vim-gitgutter'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" rainbow ==================================
let g:rainbow_active = 1
let g:rainbow_conf = {
\ 'ctermfgs': ['51','219','230','111','99','33','201','118'],
\}

" gitgutter ===================================================
let g:gitgutter_max_signs=300
 let g:gitgutter_sign_added='++'
 let g:gitgutter_sign_removed='->'
 let g:gitgutter_sign_modified='~~'
 let g:gitgutter_sign_removed_first_line='=>'
 let g:gitgutter_sign_modified_removed='+>'
set updatetime=400

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

"  不知道干嘛的 ======================================================
" let g:gitgutter_overide_sign_column_highlight=1
" highlight SignColumn ctermbg=0
" if exists('&signcolumn')  " Vim 7.4.2201
"   set signcolumn=yes
" else
"   let g:gitgutter_sign_column_always = 1
" endif

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

" ctags =============================
set tags=tags;
set autochdir

" 键位配置 ===================================
nnoremap ; :
nnoremap q: :

nnoremap <c-a> ggVG
noremap <c-c> "+Y
vnoremap <c-c> "+Y
inoremap <c-v> <esc>"+Pi
inoremap jk <esc>
vnoremap jk <esc>
vnoremap y "ay
nnoremap y "ay
vnoremap p "ap
nnoremap p "ap
vnoremap d "ad
nnoremap d "ad

" vim-sbcomplete ===================
let g:sbcom2_active = 1
let g:sbcom2_trigger = "<tab>" 
" let g:sbcom1_active = 1
" let g:sbcom1_trigger = "`" 
" let g:sbcom1_maxline = 10000
set pastetoggle=<F10>
 
" 特殊高亮 =====================================
au VimEnter * call MyView()
fun! MyView()
  if (expand("%") != "")
    " echom expand("%")
    if !isdirectory(expand("%"))
      silent loadview
      au VimLeave * silent mkview
    endif
  endif

  if (expand("%:e") == "list")
    set filetype=debsources
  elseif (expand("%:e") == "swig")
    set filetype=html
  elseif (expand("%:e") == "ejs")
    set filetype=html
  elseif (expand("%:e") == "styl")
    set filetype=css
  elseif (expand("%:e") == "save")
    set filetype=debsources
  endif

  if (expand("%:e") != "md")
    inoremap {<cr> {}<left><cr><esc>O
  else
    inoremap {<cr> {}<left><cr><backspace><esc>O
  endif
endfun
