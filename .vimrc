execute pathogen#infect()
syntax on

set t_Co=256

set number
set relativenumber
set numberwidth=5

set scrolloff=10
set sidescrolloff=15
set sidescroll=1

set laststatus=2
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set fdm=syntax

set wrap
set linebreak

set noswapfile
set cursorline

set nofoldenable

set list listchars=tab:»·,trail:·,nbsp:·
set list listchars=tab:»-,trail:·,nbsp:·

" hi Visual  guifg=#000000 guibg=#FFFFFF gui=none
hi Visual               ctermbg=5   ctermfg=7

" line number background color
highlight CursorLineNr  ctermbg=0   ctermfg=12
highlight LineNr        ctermbg=0   ctermfg=8

"highlight CursorLine    ctermbg=7   cterm=NONE
highlight CursorLine    ctermbg=0   cterm=NONE
highlight GroupB        ctermfg=0
match GroupB / /
2match GroupB /\t/

hi MatchParen cterm=bold ctermbg=none ctermfg=red

set background=dark

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }

function! LightlineFilename()
  return  &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0

" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

let g:NERDTreeWinSize=35



"let g:gitgutter_terminal_reports_focus=0
set updatetime=50
nnoremap <Leader>f :NERDTreeToggle<Enter>
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O
