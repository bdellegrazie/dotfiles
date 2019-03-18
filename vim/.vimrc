" vimrc
set nocompatible
filetype plugin indent on
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
set pastetoggle=<F2>
autocmd Filetype xml setlocal ts=4 sw=4 expandtab

" powerline config
let g:powerline_pycmd='py3'
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
