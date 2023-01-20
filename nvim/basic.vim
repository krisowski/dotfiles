"filetype on "detect files based on type
"filetype plugin on "when a file is edited its plugin files is loaded
"filetype plugin indent on "maintain indentation


"colors
"colorscheme onedark
colorscheme dracula
"colorscheme spacegray
"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu

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

"treat words with dash as a word in vim
set iskeyword+=-

set nofoldenable

set timeoutlen=1000
set ttimeoutlen=50

"mouse copy to clipboard
set mouse=r


" XML formating by xmllint
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
