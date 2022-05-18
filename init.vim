call plug#begin('~/.local/share/nvim/plugged')

" Plug 'glepnir/dashboard-nvim'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


Plug 'tibabit/vim-templates'
Plug 'sheerun/vim-polyglot'

" Color schemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/seoul256.vim'

Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-easyoperator-line'
Plug 'haya14busa/vim-easyoperator-phrase'

Plug 'tibabit/vim-templates'

Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-vinegar'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'tpope/vim-fugitive'
Plug 'takac/vim-hardtime'
Plug 'luochen1990/rainbow'
Plug 'mhinz/vim-startify'

call plug#end()

" Rainbow para. on.
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" deoplete settings
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']})
" Use vimtex deoplete source.
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})

" Hardtime mode on.
let g:hardtime_default_on = 1

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
set switchbuf=useopen
set nocompatible

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

" Set Vim templates search path.
let g:tmpl_search_paths = ['~/.config/nvim/templates']

nnoremap q b
nnoremap r $

" Swap Easymotion Jump bindings
map <Leader>jj <Plug>(easymotion-overwin-f2)
map <Leader>jJ <Plug>(easymotion-sn)
omap <Leader>jJ <Plug>(easymotion-tn)
map <Leader>jl <Plug>(easymotion-overwin-line)

" Easymotion select, yank, delete bindings
nmap <Leader>dl <Plug>(easyoperator-line-delete)
nmap <Leader>yl  <Plug>(easyoperator-line-yank)
nmap <Leader>sl   <Plug>(easyoperator-line-select)

nmap <Leader>sj <Plug>(easyoperator-phrase-select)
nmap <Leader>dj <Plug>(easyoperator-phrase-delete)
nmap <Leader>yj <Plug>(easyoperator-phrase-yank)


" buffer related bindings
:set splitright
:set splitbelow
nmap <Leader>bd :bd <CR>
nmap <Leader>bnv :vnew <CR>
nmap <Leader>bnh :new <CR>
nmap <Leader>bs :ls<cr>:b<space>

" window related bindings 
nmap <Leader>wd :close <CR>
nmap <Leader>wv :vsp <CR>
nmap <Leader>wh :sp <CR>

" Jump within current line
map <Leader>jm <Plug>(easymotion-sl)
map <Leader>jw <Plug>(easymotion-wl) 
map <Leader>jl <Plug>(easymotion-overwin-line)

" Vimtex key bindings
nmap <Leader>cc <Plug>(vimtex-compile)
nmap <Leader>cv <Plug>(vimtex-view)

" Insert mode bindings
inoremap <C-r><C-r> <C-r>"

" Vim vinegar vert/horizaontal bindings
nmap <Leader>-v <Plug>VinegarVerticalSplitUp
nmap <Leader>-h <Plug>VinegarSplitUp


" Rebind line delete ke
nmap <c-d> dd
imap <c-d> <esc>ddi

" Move lines down without switching to insert mode.
nmap <S-Enter> o<Esc>

" Bind moving lines down one place.
imap <c-CR> ddp

" Open vimrc
nnoremap <Leader>ev :vsp ~/.config/nvim/init.vim <CR> 
" Open tex snipets file
nnoremap <Leader>et :vsp ~/.config/nvim/snippts/tex.snippets <CR> 





