:set number
:syntax enable
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set nowrap
:set cursorline
:set encoding=UTF-8
:set ignorecase
:set smartcase
:set incsearch


call plug#begin()
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'itchyny/vim-gitbranch'
    Plug 'preservim/nerdtree'
    Plug 'morhetz/gruvbox'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
call plug#end()

let g:airline_theme = 'bubblegum'

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

colorscheme gruvbox

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

inoremap <silent><expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"

