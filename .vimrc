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
set tabpagemax=30 " Maximum number of tabs user can open
set hlsearch ""highlighting on search
"set completeopt += longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.git,*.rbc,*.pyc,__pycache__,*~,*.class


"" Set colour scheme to solarized8_flat
set background=dark
set encoding=utf8
colorscheme gruvbox

call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'                "" tab autocomplete
Plug 'jiangmiao/auto-pairs'
Plug 'wakatime/vim-wakatime'
"Plug 'sheerun/vim-polyglot'
"Plug 'junegunn/fzf.vim'
"Plug 'tomtom/tcomment_vim'
"Plug 'ammarnajjar/vim-code-dark'


call plug#end() 


"Enable autosave plugin
"let g:auto_save = 1
"
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



" Return to last edit position when opening files (You want this!)
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal! g`\"" |
                \ endif



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
