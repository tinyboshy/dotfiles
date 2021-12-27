let g:python_host_prog=$PYENV_ROOT.'/versions/neovim-2/bin/python'
let g:python3_host_prog=$PYENV_ROOT.'/versions/neovim-3/bin/python'

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/tinyboshy/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/tinyboshy/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/home/tinyboshy/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
let s:toml_dir = expand('~/.config/nvim')
call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
