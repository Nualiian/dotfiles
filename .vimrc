syntax enable

colorscheme darkblue

set backspace=indent,eol,start
let mapleader=','
set number


"----------- Search -----------"
set hlsearch
set incsearch


"----------- Mappings -----------"

" editing vimrc "
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" remove search highlight "
nmap <Leader><space> :nohlsearch<cr>





"----------- Auto-commands -----------"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
