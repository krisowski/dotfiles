call plug#begin(expand('~/.vim/plugged'))

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'

"LSP client
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

"Go
Plug 'fatih/vim-go'

"Python: install flake8, jedi-language-server, python3-venv
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }

call plug#end()
