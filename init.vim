set nu relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
"highlight CursorLine ctermbg=darkGrey cterm=NONE ctermfg=white
set termguicolors
set cursorcolumn
set cursorline
set encoding=UTF-8
highlight CursorColumn ctermbg=Yellow cterm=bold guibg=#2b2b2f
highlight CursorLine ctermbg=Yellow cterm=bold guibg=#2b2b2f

set wildmode=longest,list,full
"
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"auto pairs
Plug 'jiangmiao/auto-pairs'

"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

"vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'https://github.com/tpope/vim-fugitive.git'

" Ranger plugin
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'


Plug 'danilamihailov/beacon.nvim'

Plug 'tomasiser/vim-code-dark'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'akinsho/toggleterm.nvim'

Plug 'kdheepak/lazygit.nvim'

Plug 'Lokaltog/vim-easymotion'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" nvim-tree file explorer 
" Plug 'kyazdani42/nvim-web-devicons' 
" Plug 'kyazdani42/nvim-tree.lua'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'voldikss/vim-floaterm'

" Initialize plugin system
call plug#end()

let mapleader = ","
" Find files using Telescope command-line sugar.

"""toggleterm setting"""
" set
let g:toggleterm_terminal_mapping = '<leader>tt'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <leader>tt <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <leader>tt <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <leader>tt <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
"""""""""""""
" setup mapping to call :LazyGit
nnoremap <silent> <leader><leader>lg :LazyGit<CR>

"""" ranger setting """"
let g:ranger_map_keys = 0
map <leader><leader>rg :Ranger<CR>

"""" telescop setting """"
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


""""" Airline setup """""
set ttimeoutlen=50
let g:airline_theme = 'powerlineish'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

colorscheme codedark


""""" Floatterm """""
" Configuration example
let g:floaterm_keymap_new    = '<leader>ft'
let g:floaterm_keymap_prev   = '<leader>ftp'
let g:floaterm_keymap_next   = '<leader>ftn'
let g:floaterm_keymap_toggle = '<leader>ft'
nnoremap <leader><leader>ft <cmd>FloatermNew --width=0.8 --height=0.8<cr>
nnoremap <leader>fz <cmd>Files<cr>
nnoremap <leader>rg <cmd>FloatermNew ranger<cr>
nnoremap <leader>lg <cmd>FloatermNew lazygit<cr>
nnoremap <leader>br <cmd>FloatermNew broot<cr>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


