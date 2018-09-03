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

set list listchars=tab:»·,trail:·,nbsp:·
set list listchars=tab:»-,trail:·,nbsp:·

" line number background color
highlight CursorLineNr  ctermbg=0   ctermfg=12
highlight LineNr        ctermbg=0   ctermfg=8

highlight CursorLine    ctermbg=0   cterm=NONE
highlight GroupB        ctermfg=8
match GroupB / /
2match GroupB /\t/

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
