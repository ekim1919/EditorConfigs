call plug#begin('~/.local/share/nvim/plugged')

" Plug 'glepnir/dashboard-nvim'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'tibabit/vim-templates'
Plug 'sheerun/vim-polyglot'

" Color schemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/seoul256.vim'

Plug 'easymotion/vim-easymotion'
Plug 'tibabit/vim-templates'

Plug 'unblevable/quick-scope'
Plug 'machakann/vim-highlightedyank'
call plug#end()

" Color Scheme Settings
let g:seoul256_background = 234
colorscheme seoul256

" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable
set number
set mouse=a

" Space as leader key.
nnoremap <SPACE> <Nop>
let mapleader=" "

" Vimtex Settings
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'skim'

set conceallevel=1
let g:tex_conceal='abdmg'

" UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

" This is new style
call deoplete#custom#var('omni', 'input_patterns', {
          \ 'tex': g:vimtex#re#deoplete
          \})
" Set Vim templates search path.
let g:tmpl_search_paths = ['~/.config/nvim/templates']

nnoremap q b
nnoremap r $

"Swap Easymotion Jump bindings
nmap <Leader>jj <Plug>(easymotion-overwin-f2)
nmap <Leader>jJ <Plug>(easymotion-sn)
omap <Leader>jJ <Plug>(easymotion-tn)
nmap <Leader>jl <Plug>(easymotion-overwin-line)
nmap <Leader>jm <Plug>(easymotion-sl)

" Vimtex key bindings
nmap <Leader>cc <Plug>(vimtex-compile)
nmap <Leader>cv <Plug>(vimtex-view)

" Rebind line delete ke
nmap <c-d> dd
imap <c-d> <esc>ddi

" Move lines down without switching to insert mode.
nmap <S-Enter> o<Esc>

" Bind moving lines down one place.
imap <c-CR> ddp





