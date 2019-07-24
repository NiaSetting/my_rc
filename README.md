## 记得做完oslab后删除环境变量

## vimrc

使`vim`能够使用`gvim`颜色主题的代码

```vimrc
if version >= 700 && &term != 'cygwin' && !has('gui_running')
  " In the color terminal, try to use CSApprox.vim plugin or
  " guicolorscheme.vim plugin if possible in order to have consistent
  " colors on different terminals.
  "
  " Uncomment one of the following lines to force 256 or 88 colors if
  " your terminal supports it. Or comment both of them if your terminal
  " supports neither 256 nor 88 colors. Unfortunately, querying the
  " number of supported colors does not work on all terminals.
  set t_Co=256
  "set t_Co=88
  if &t_Co == 256 || &t_Co == 88
    " Check whether to use CSApprox.vim plugin or guicolorscheme.vim plugin.
    if has('gui') &&
      \ (filereadable(expand("$HOME/.vim/plugin/CSApprox.vim")) ||
      \  filereadable(expand("$HOME/vimfiles/plugin/CSApprox.vim")))
      let s:use_CSApprox = 1
    elseif filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim")) ||
      \    filereadable(expand("$HOME/vimfiles/plugin/guicolorscheme.vim"))
      let s:use_guicolorscheme = 1
    endif
  endif
endif
if exists('s:use_CSApprox')
  " Can use the CSApprox.vim plugin.
  let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
  colorscheme tokyo-metro
elseif exists('s:use_guicolorscheme')
  " Can use the guicolorscheme plugin. It needs to be loaded before
  " running GuiColorScheme (hence the :runtime! command).
  runtime! plugin/guicolorscheme.vim
  GuiColorScheme tokyo-metro
else
  colorscheme tokyo-metro
endif
```

## Usage

```bash
mv vimrc ~/.vimrc
mv zshrc ~/.zshrc
```
