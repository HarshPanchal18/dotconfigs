"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 


"" Map leader to ,
let mapleader = ","

"" Simple stuff
set number
set linebreak
set textwidth=100
set showmatch
set smartcase
set ignorecase
set incsearch
set autoindent
set shiftwidth=4
set smarttab
set softtabstop=4
set ruler
set undolevels=1000
set backspace=indent,eol,start
set number relativenumber
set wildmenu
set splitbelow
set cursorline
set cursorcolumn
set hlsearch ""highlighting on search
"set completeopt += longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


"" Set colour scheme to solarized8_flat
set background=dark
set encoding=utf8
colorscheme gruvbox

call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'                "" tab autocomplete
Plug 'jiangmiao/auto-pairs'
""Plug 'sheerun/vim-polyglot'
Plug 'wakatime/vim-wakatime'

call plug#end() 


"" Indentation and syntax highlighting
filetype plugin indent on
syntax enable

"" Automatically enable and disable relative line numbers
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

"" Press Space to turn off highlighting and clear any message already displayed
noremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"" See https://stackoverflow.com/questions/30691466/what-is-difference-between-vims-clipboard-unnamed-and-unnamedplus-settings
set clipboard^=unnamed,unnamedplus

"" Increase buffer size to 1000 lines
set viminfo='20,<1000,s1000

"" For pathogen to work
execute pathogen#infect()

augroup nerdtree
    
    autocmd!
    
    "" Start NERDTree when you open a file with vim
    autocmd vimenter * NERDTree
    
    "" Focus on the opened file instead of on the NERDTree pane
    autocmd VimEnter * wincmd p
    
    "" Open NERDTree even when no files are specified
    autocmd StdinReadPre * let s:std_in=1
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

augroup END

"" Run NERDTreeTabs on vim startup
let g:nerdtree_tabs_open_on_console_startup = 1

"" Map Ctrl + left arrow and Ctrl + right arrow to switch tabs
noremap <silent> <C-Left> :tabprevious<CR>
noremap <silent> <C-Right> :tabnext<CR>

"" Use the 'wombat' colour scheme for in the lightline plugin
let g:lightline = {'colorscheme': 'wombat'}

"" Press ,<space> to bring up the terminal
try
    noremap <silent> <leader><space> :terminal fish<CR>
catch
    noremap <silent> <leader><space> :terminal bash<CR>
endtry

"" Press Esc twice to exit and close the terminal
tnoremap <ESC><ESC> <C-w>:q!<CR>

"" Jump to the previous position when re-opening a file
augroup previous_position 

    autocmd!

    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif

augroup END

" Switch to tab by tab number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
"set statusline=

" Status line left side.
"set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
"set statusline+=%=

" Status line right side.
"set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
"set laststatus=2

" }}}
"
"%F – Display the full path of the current file.
"%M – Modified flag shows if file is unsaved.
"%Y – Type of file in the buffer.
"%R – Displays the read-only flag.
"%b – Shows the ASCII/Unicode character under cursor.
"0x%B – Shows the hexadecimal character under cursor.
"%l – Display the row number.
"%c – Display the column number.
"%p%% – Show the cursor percentage from the top of the file."
