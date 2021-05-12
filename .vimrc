" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed.
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Indent Guides
Plug 'nathanaelkane/vim-indent-guides'

" Onedark vim
Plug 'joshdick/onedark.vim'

" Badwolf vim
Plug 'sjl/badwolf'

" Rainbow
Plug 'luochen1990/rainbow'

" Indentline
Plug 'yggdroot/indentline'

" Fugitie (git)
Plug 'tpope/vim-fugitive'

" Python auto PEP8
Plug 'tell-k/vim-autopep8'

" Jedi Python
Plug 'davidhalter/jedi-vim'

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Vim Workspace
Plug 'thaerkh/vim-workspace'

" Initialize plugin system
call plug#end()

" Vim Awesome Configuration
set runtimepath+=~/.vim_runtime
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

let g:snipMate = { 'snippet_version': 1 }

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

set number
set ts=4 sw=4 et
let g:indent_guides_start_level = 4
colorscheme onedark
