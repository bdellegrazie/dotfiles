set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'

Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'saltstack/salt-vim'
Plugin 'scrooloose/syntastic'

call vundle#end()             " required!
filetype plugin indent on     " required!

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set pastetoggle=<F2>

" Syntastic basics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_puppet_checkers = ['puppet', 'puppetlint']
let g:syntastic_puppet_puppetlint_args = "--no-80chars-check --no-autoloader_layout-check --no-documentation-check --no-relative_classname_inclusion-check"
autocmd Filetype puppet setlocal ts=2 sw=2 expandtab

" Vim / Tmux integration
let g:tmux_navigator_save_on_switch = 1
set t_ts=k
set t_fs=\
auto BufEnter * :set title | let &titlestring = 'v:' . expand('%')
auto VimLeave * :set t_ts=k\

