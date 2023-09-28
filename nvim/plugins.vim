call plug#begin(expand('~/.vim/plugged'))

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

"color schemes
Plug 'dracula/vim', { 'as': 'dracula' }

"LSP client
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

"Go
Plug 'fatih/vim-go'

"Snippets: CocInstall coc-snippets
Plug 'honza/vim-snippets'

"Python: :CocInstall coc-pyright
"Python: install flake8, jedi-language-server, python3-venv
"Plug 'Vimjas/vim-python-pep8-indent'
"Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }

":CocInstall coc-json
":CocInstall coc-pyright
":CocInstall coc-tsserver

"Ruby
":CocInstall coc-solargraph

call plug#end()
