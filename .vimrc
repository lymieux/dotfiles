call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'lifepillar/vim-mucomplete'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

" List ends here. Plugins become visible to Vim after this call.
set incsearch
set termguicolors
set ignorecase
set smartcase
set incsearch
set termguicolors 
set number relativenumber
set encoding=UTF-8
set conceallevel=1
set omnifunc=syntaxcomplete#Complete
set spell spelllang=en_us
set completeopt+=menuone
set shortmess+=c
set belloff+=ctrlg
set completeopt+=noinsert

let g:tex_flavor='latex'
let g:livepreview_previewer='zathura' " Placeholder
let g:tex_conceal='abdmg'
let g:vimtex_quickfix_mode=0
let g:deoplete#enable_at_startup=1
let g:webdevicons_enable_nerdtree=1
let g:mucomplete#enable_auto_at_startup=1
let g:UltiSnipsExpandTrigger='<c-s>'
let g:UltiSnipsListSnippets='<c-l>' " l for list snippets, c-l in non-insert mode refreshes screen 
let g:UltiSnipsJumpForwardTrigger="<c-x>"
let g:UltiSnipsJumpBackwardTrigger="<c-a>"

let mapleader = ","
nmap <ScrollWheelUp> <nop>
nmap <S-ScrollWheelUp> <nop>
nmap <C-ScrollWheelUp> <nop>
nmap <ScrollWheelDown> <nop>
nmap <S-ScrollWheelDown> <nop>
nmap <C-ScrollWheelDown> <nop>
nmap <ScrollWheelLeft> <nop>
nmap <S-ScrollWheelLeft> <nop>
nmap <C-ScrollWheelLeft> <nop>
nmap <ScrollWheelRight> <nop>
nmap <S-ScrollWheelRight> <nop>
nmap <C-ScrollWheelRight> <nop>

filetype plugin indent on
syntax on
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

