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
set shiftwidth=2 " Number of auto-indent spaces
set showmatch " Show matching brackets
set showcmd " Show incomplete command
" Set 7 lines to the cursor - when moving vertically using j/k
"set so=7
set smartcase " When searching try to be smart about cases
set ignorecase " Ignore case when searching
set incsearch " Makes search act like search in modern browsers
set autoindent
set autoread "Set to auto read when a file is changed from the outside
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
set tabpagemax=30 " Maximum number of tabs user can open
set noerrorbells " No annoying sounds on error
set novisualbell
set ai " Auto Indent
set si " Smart Indent
set hlsearch "highlighting on search
"set completeopt += longest
set wildmode=longest,list,full
"set nocompatible
set dictionary+=/usr/share/dict/words
filetype off
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" - :b lets you autocomplete any open buffer

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.git,*.rbc,*.pyc,__pycache__,*~,*.class

" How many tenths of a second to blink when matching brackets
"set mat=2
set autowrite           " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a            " Enable mouse usage (all modes)


"" Set colour scheme to solarized8_flat
set background=dark
set encoding=utf8
colorscheme gruvbox

call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'                "" tab autocomplete
Plug 'jiangmiao/auto-pairs'
Plug 'wakatime/vim-wakatime'
Plug 'preservim/nerdcommenter'
Plug 'sinetoami/dimfocus.vim'

"Plug 'sheerun/vim-polyglot'
"Plug 'junegunn/fzf.vim'
"Plug 'tomtom/tcomment_vim'
"Plug 'ammarnajjar/vim-code-dark'
"Plug 'tpope/vim-surround' Brackets and surrounds
"Plug 'preservim/nerdtree'
"Plug 'junegunn/goyo.vim'
"Plug 'jreybert/vimagit'
"Plug 'lukesmithxyz/vimling'
"Plug 'vimwiki/vimwiki'
"Plug 'vim-airline/vim-airline' Nice looking status bar
"Plug 'tpope/vim-commentary'
"Plug 'ap/vim-css-color'

"Plug 'ryanoasis/vim-devicons'
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'cespare/vim-toml'
"Plug 'tikhomirov/vim-glsl'
"
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
"Plug 'deoplete-plugins/deoplete-jedi'
"Plug 'fszymanski/deoplete-emoji'
""Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
"Plug 'racer-rust/vim-racer'
"Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
"Plug 'Shougo/denite.nvim'
"
"Plug 'davidhalter/jedi-vim'
"Plug 'a-vrma/black-nvim', {'do': ':UpdateRemotePlugins'}
"
"Plug 'Konfekt/FastFold'
"Plug 'tmhedberg/SimpylFold'
"
"Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tveskag/nvim-blame-line'

"Plug 'vim-scripts/django.vim'

"Plug 'vim-ruby/vim-ruby'
"Plug 'tpope/vim-rails'
"Plug 'tpope/vim-rbenv', { 'for': 'ruby' }
"Plug 'tpope/vim-bundler', { 'for': 'ruby' }
"Plug 'stephpy/vim-yaml'

"Plug 'machakann/vim-highlightedyank'
"Plug 'mhinz/vim-startify'
"Plug 'tpope/vim-rails'
"Plug 'myusuf3/numbers.vim'
"Plug 'bronson/vim-trailing-whitespace'
"Plug 'godlygeek/tabular'
"Plug 'jeetsukumaran/vim-buffergator'
"Plug 'scrooloose/nerdcommenter'
"Plug 'morhetz/gruvbox'
"Plug 'scrooloose/nerdtree'
"Plug 'neomake/neomake'
"Plug 'tpope/vim-surround'
"Plug 'easymotion/vim-easymotion'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'bling/vim-airline'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'kien/rainbow_parentheses.vim'
"Plug 'w0rp/ale'

call plug#end() 

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

"call vundle#begin()

"Plugin 'terryma/vim-multiple-cursors'  Like VSCode's multiple cursors
"Plugin 'dense-analysis/ale'  Syntax checker
"Plugin 'thaerkh/vim-workspace' enable workspaces (use :ToggleWorkspace to create a new workspace)
"Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}  Instantly preview markdown in browser
"Plugin 'tpope/vim-fugitive' apparently the best git plugin for vim
"Plugin 'tpope/vim-markdown' better markdown support

"call vundle#end()

" Disables automatic commenting on newline:
        autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Spell-check set to <leader>o, 'o' for 'orthography':
        map <leader>o :setlocal spell! spelllang=en_us<CR>

"" Set colour scheme to solarized8_flat
set background=dark
set encoding=utf8
colorscheme gruvbox

"Enable autosave plugin
"let g:auto_save = 1
"let g:auto_save_loaded = 1
"only save in normal mode periodically. If the value is changed to 1
"then changes are saved when you are in insert mode too, as you type , but
"I would say prefer not save in insert mode
"let g:auto_save_in_insert_mode = 0

"Silently autosave. If you disable this option by changing value to '0'
" then in the vim status, it will be display (Autosaved at <current time>) all the time, which might get annoying
"let g:auto_save_silent = 1

"Turn backup off
set nobackup
set nowritebackup"
"And now turn vim swap file off
set noswapfile

" To make save the folds of given file
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Fast saving
nmap <leader>w :w!<cr>

"Code snippets for different codebases
nnoremap ,html : -1read $HOME/.vim/.skeleton.html<CR>2jwf>a
nnoremap ,c : -1read $HOME/.vim/.skeleton.c<CR>3ji
nnoremap ,cpp : -1read $HOME/.vim/.skeleton.cpp<CR>3ji
nnoremap ,sh : -1read $HOME/.vim/.skeleton.sh<CR>8ji
nnoremap ,py : -1read $HOME/.vim/.skeleton.py<CR>2j5la<space>
nnoremap ,jj : -1read $HOME/.vim/.skeleton.java<CR>2jA<space>

" Delete file from inside vim
command! -complete=file -nargs=1 Remove :echo 'Remove: '.' '.(delete(<f-args>) == 0 ? 'SUCCEED' : 'FAILED')
"Give->   :Remove %  ,where colon is mendatory and % means current file


" Return to last edit position when opening files (You want this!)
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal! g`\"" |
                \ endif

" Remember info about open buffers on close
set viminfo^=%

"" Indentation and syntax highlighting
filetype plugin indent on
syntax enable

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" clang_complete
" ----------------------------------------------------
if empty($CLANG_COMPLETE_LIB)
  let g:clang_complete_loaded = 1
endif

let g:clang_library_path    = $CLANG_COMPLETE_LIB
let g:clang_auto_select     = 1
let g:clang_complete_auto   = 0
let g:clang_snippets        = 0
"}}}

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
" <silent> tells vim to show no message when this key sequence is used.

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

"Move a line up/down (Move line up/down)
map <silent> <c-k>  :m -2<CR>
map <silent> <c-j>  :m +1<CR>
map <silent> <c-up>  :m -2<CR>
map <silent> <c-down>  :m +1<CR>

"works in insert mode
imap <C-Up> <C-O>:m-2<CR><C-O>==
imap <C-Down>  <C-O>:m+<CR><C-O>==

" move the current line left or right
nmap <C-Right> >>
imap <C-Left> <C-O><<
imap <C-Right> <C-O>>>
nmap <C-Left> <<

" move the selected block up or down
vmap <C-Down>  :m'>+<CR>gv=gv
vmap <C-Up> :m'<-2<CR>gv=gv

" move the selected block left or right
vmap <C-Right> >gv
vmap <C-Left> <gv

" map jk and kj to <Esc> in insert mode
"inoremap jk <Esc>
"inoremap kj <Esc>

" Map Alt-(j/k) to move line/blocks of lines up or down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"Moving to the tab
map <S-H> gT
map <S-L> gt

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

map , :NERDTreeToggle<CR>

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

" Configure the `make` command to run RSpec
"set makeprg=bundle\ exec\ rspec\ -f\ QuickfixFormatter
" NOW WE CAN:
" - Run :make to run RSpec
" - :cl to list errors
" - :cc# to jump to error by number
" - :cn and :cp to navigate forward and back

"Some Abbreviations that saves me from reassure saving/exit command
ab W w
ab Wq wq
ab wQ wq
ab WQ wq
ab Q q
ab WQA wqa
ab Wqa wqa

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

" Delete file from inside vim
command! -complete=file -nargs=1 Remove :echo 'Remove: '.' '.(delete(<f-args>) == 0 ? 'SUCCEED' : 'FAILED')
"Give->   :Remove %  ,where colon is mendatory and % means current file

"" Use the 'wombat' colour scheme for in the lightline plugin
let g:lightline = {'colorscheme': 'wombat'}

"" Press ,<space> to bring up the terminal
try
    noremap <silent> <leader><space> :terminal fish<CR>
catch
    noremap <silent> <leader><space> :terminal bash<CR>
endtry

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


" => Status line ---------------------- {{{2
"    set statusline=
"    set statusline=[%n]\                                            " buffer number
"    set statusline+=%<%.99f                                         " file name, F for full path
"    set statusline+=%#warningmsg#                                   " warning for paste mode
"    set statusline+=%{HasPaste()}
"    set statusline+=%*
"    set statusline+=%m%r%h%w                                        " status flags
"    set statusline+=%#question#                                     " warning for encoding not utf8
"    set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
"    set statusline+=%*
"    set statusline+=%#warningmsg#                                   " warning if tabs exist
"    set statusline+=%{StatuslineTabWarning()}
"    set statusline+=%*
"    set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''} " fugitive
"    set statusline+=%=                                              " right align
"    set statusline+=%y                                              " buffer file type
"    set statusline+=(%{strftime(\"%d.%m.%Y\ %H:%M\",getftime(expand(\"%:p\")))})  " last modified
"    set statusline+=%#question#                                     " coc diagnostic
"    set statusline+=%{StatusDiagnostic()}
"    set statusline+=%*
"    set statusline+=%#directory#
"    set statusline+=%{&ff!='unix'?'['.&ff.']':''}                   " fileformat not unix
"    set statusline+=%*
"    set statusline+=\ %c%V,%l/                                      " column and row Number
"    set statusline+=%L\ %P                                          " total lines, position in file
    " }}}


" delete trailing white spaces except for markdown
    autocmd BufWrite *.* :call DeleteTrailingWS()

" Strip trailing white space on save
function! DeleteTrailingWS()
    " Don't strip on these filetypes
    if &ft =~ 'markdown'
        return
    endif
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc


"AutoSave
if exists("g:auto_save_loaded")
  finish
else
  let g:auto_save_loaded = 1
endif

let s:save_cpo = &cpo
set cpo&vim

if !exists("g:auto_save")
  let g:auto_save = 1 " enable AutoSave on Vim startup if the value is 1
endif

if !exists("g:auto_save_silent")
  let g:auto_save_silent = 1 " do not display the auto-save notification
endif

if !exists("g:auto_save_write_all_buffers")
  let g:auto_save_write_all_buffers = 1 " write all open buffers as if you would use :wa
endif

if !exists("g:auto_save_events")
  let g:auto_save_events = ["InsertLeave", "TextChanged"]
endif

" Check all used events exist
for event in g:auto_save_events
  if !exists("##" . event)
    let eventIndex = index(g:auto_save_events, event)
    if (eventIndex >= 0)
      call remove(g:auto_save_events, eventIndex)
      echo "(AutoSave) Save on " . event . " event is not supported for your Vim version!"
      echo "(AutoSave) " . event . " was removed from g:auto_save_events variable."
      echo "(AutoSave) Please, upgrade your Vim to a newer version or use other events in g:auto_save_events!"
    endif
  endif
endfor

augroup auto_save
  autocmd!
  for event in g:auto_save_events
    execute "au " . event . " * nested call AutoSave()"
  endfor
augroup END

command AutoSaveToggle :call AutoSaveToggle()

function AutoSave()
  if s:GetVar('auto_save', 0) == 0
    return
  end

  let was_modified = s:IsModified()
  if !was_modified
    return
  end

  if exists("g:auto_save_presave_hook")
    let g:auto_save_abort = 0
    execute "" . g:auto_save_presave_hook
    if g:auto_save_abort >= 1
      return
    endif
  endif

  " Preserve marks that are used to remember start and
  " end position of the last changed or yanked text (`:h '[`).
  let first_char_pos = getpos("'[")
  let last_char_pos = getpos("']")

  call DoSave()

  call setpos("'[", first_char_pos)
  call setpos("']", last_char_pos)

  if was_modified && !&modified
    if exists("g:auto_save_postsave_hook")
      execute "" . g:auto_save_postsave_hook
    endif

    if g:auto_save_silent == 0
      echo "(AutoSave) saved at " . strftime("%H:%M:%S")
    endif
  endif
endfunction

function s:IsModified()
  if g:auto_save_write_all_buffers >= 1
    let buffers = filter(range(1, bufnr('$')), 'bufexists(v:val)')
    call filter(buffers, 'getbufvar(v:val, "&modified")')
    return len(buffers) > 0
  else
    return &modified
  endif
endfunction

" Resolve variable value by climbing up window-buffer-global hierarchy
" So, buffer-local or window-local variables override global ones
" If not found on any level, fallbacks to default value or empty string
function s:GetVar(...)
  let varName = a:1

  if exists('w:' . varName)
    return w:{varName}
  elseif exists('b:' . varName)
    return b:{varName}
  elseif exists('g:' . varName)
    return g:{varName}
  else
    return exists('a:2') ? a:2 : ''
  endif
endfunction

function DoSave()
  if g:auto_save_write_all_buffers >= 1
    silent! wa
  else
    silent! w
  endif
endfunction

function AutoSaveToggle()
  if g:auto_save >= 1
    let g:auto_save = 0
    echo "(AutoSave) OFF"
  else
    let g:auto_save = 1
    echo "(AutoSave) ON"
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" {{{ For YouCompleteMe
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.ycm_global_extra_conf.py'
"let g:ycm_filetype_specific_completion_to_disable = {
      "\ 'python': 1
      "\}
"let g:ycm_filetype_blacklist = {
      "\ 'python': 1
      "\}
let g:ycm_auto_trigger = 1
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1

" trigger semantic completion after typing 2 characters
let g:ycm_semantic_triggers = {
  \   'cpp': [ 're!\w{2}' ],
  \   'c': [ 're!\w{2}' ]
  \ }

" End YouCompleteMe
" }}}

" sessionman.vim mappings
noremap <leader>sa :SessionSaveAs<CR>
noremap <leader>ss :SessionSave<CR>
noremap <leader>so :SessionOpen
noremap <leader>sl :SessionList<CR>
noremap <leader>sc :SessionClose<CR>

" Always do vimdiff in vertical splits
set diffopt+=vertical
" and ignore whitespace
"set diffopt+=iwhite
"
"" tabular mappings (http://vimcasts.org/episodes/aligning-text-with-tabular-vim/)
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>a> :Tabularize /=><CR>
vmap <Leader>a> :Tabularize /=><CR>

" use space bar to open/close folds
nnoremap <space> za

" clear highlight quick
nnoremap <leader><Space> :nohls<CR>

" easy tab navigation
nnoremap <silent> <C-N> :tabnext<CR>
nnoremap <silent> <C-P> :tabprev<CR>

"Shortuts

" map CTRL-E to end-of-line (insert mode)
imap <C-e> <esc>$i<right>

" map CTRL-A to beginning-of-line (insert mode)
imap <C-a> <esc>0i

" CTRL-C to copy (visual mode)
vmap <C-c> y

" CTRL-X to cut (visual mode)
vmap <C-x> x

" CTRL-V to paste (insert mode)
imap <C-v> <esc>P

" Yank from cursor to end of line
nnoremap Y y$

" Tab function from Hacking Vim by Kim Shulz
" If no completion, insert tab.
" Else check if an omnifunction
function! SuperCleverTab()
    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
        return "\<Tab>"
    else
        if &omnifunc != ''
            return "\<C-X>\<C-O>"
        elseif &dictionary != ''
            return "\<C-K>"
        else
            return "\<C-N>"
        endif
    endif
endfunction

inoremap <Tab> <C-R>=SuperCleverTab()<cr>
