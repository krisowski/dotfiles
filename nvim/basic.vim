filetype on "detect files based on type
filetype plugin on "when a file is edited its plugin files is loaded
filetype plugin indent on "maintain indentation

"buffers
map <C-h> :bp!<CR>
map <C-l> :bn!<CR>
map <C-k> :b!#<CR>
map <C-j> :buffers<CR>
"show current buffer number too
noremap <C-g> 2<C-g>

"" Tabs. May be overridden by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

set number

let mapleader = ","
