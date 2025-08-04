set number
set relativenumber
set title
set showcmd

set hlsearch
nnoremap <silent> <Esc> :nohl<CR><Esc>

set expandtab
set nobackup
set cursorline
set termguicolors
set winblend=0
set wildoptions=pum
set pumblend=5
set mouse=a " allows the mouse for selecting, scrolling, and other actions within editor.
let skip_defaults_vim=1 " prevent Vim from automatically entering visual mode when you select text with the mouse.

set so=7
set softtabstop=2
set shiftwidth=2

call plug#begin()

Plug 'preservim/nerdtree'

" Multiple commands
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

Plug 'tpope/vim-sensible'

" for the code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Spaceduck colorscheme
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

Plug 'ap/vim-css-color'

Plug 'itchyny/lightline.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/goyo.vim'

" Plug 'airblade/vim-gitgutter'

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'powerline/powerline'

Plug 'wakatime/vim-wakatime'

Plug 'MeanderingProgrammer/render-markdown.nvim'

Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }

Plug 'nvim-tree/nvim-web-devicons'

Plug 'lewis6991/gitsigns.nvim'

Plug 'sitiom/nvim-numbertoggle'

" Plug 'folke/twilight.nvim'

call plug#end()


" NERDTree

"Changing default NERDTree arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

nnoremap <C-t> :NERDTreeToggle<CR>

"Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

map <leader>nf :NERDTreeFind<CR>
map <F8> :NERDTreeToggle<CR>

" trigger the refresh automatically when focusing the NERDTree window.
autocmd BufEnter NERD_tree_* | execute 'normal R'

" Nerd Tree
augroup nerdtree

    autocmd!

    "" Start NERDTree when you open a file with vim
    autocmd vimenter * NERDTree
    "" Focus on the opened file instead of on the NERDTree pane
    autocmd VimEnter * wincmd p

augroup END

" Code completion (coc)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

" https://github-wiki-see.page/m/neoclide/coc.nvim/wiki/Using-coc-extensions
let g:coc_global_extensions = [ 
  \ 'coc-json',
  \ 'coc-css',
  \ 'coc-prettier',
  \ 'coc-docker',
  \ 'coc-explorer',
  \ 'coc-git',
  \ 'coc-markdownlint',
  \ 'coc-markdown-preview-enhanced',
  \ 'coc-go',
  \ 'coc-lua',
  \ 'coc-java',
  \ 'coc-pyright',
  \ 'coc-sh',
  \ 'coc-vimlsp',
  \ 'coc-yaml',
  \ ]

nnoremap <silent> K :call CocAction('doHover')<CR>

" Use tab for trigger completion with characters ahead and navigate
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Colorscheme
if exists('+termguicolors')
   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
   set termguicolors
endif

colorscheme habamax " wildcharm

" gitgutter
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
