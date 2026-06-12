" ==========================================
" 1. Core Editor Settings for C++
" ==========================================
syntax on                   " Turn on syntax highlighting
set number                  " Show line numbers
set relativenumber          " Relative line numbers for fast jumping
set tabstop=4               " A tab counts for 4 spaces
set shiftwidth=4            " Auto-indentation uses 4 spaces
set expandtab               " Turn tabs into spaces
set smartindent             " Smart auto-indenting for code
" ==========================================
" 2. Plugin Declarations
" ==========================================
call plug#begin('~/.vim/plugged')

" Color scheme (Easy on the eyes)
Plug 'sainnhe/gruvbox-material'
" File tree explorer sidebar
Plug 'preservim/nerdtree'

" Status bar at the bottom
Plug 'vim-airline/vim-airline'

" Intellisense / Auto-completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" --- Theme & UI Settings (Gruvbox Material) ---
set background=dark

" Set contrast: 'hard', 'medium' (default), or 'soft'
let g:gruvbox_material_background = 'medium'

"1. Enable transparent background
let g:gruvbox_material_transparent_background = 1

" Enable the material palette
colorscheme gruvbox-material

" Update vim-airline to match the material theme automatically
let g:airline_theme = 'gruvbox_material'
" Press Ctrl + n to toggle the file sidebar tree
nnoremap <C-n> :NERDTreeToggle<CR>


" clipboard
set clipboard=unnamedplus


" ==========================================
" 4. C++ Compilation & Navigation Shortcuts
" ==========================================
" Press F5 to save, compile with modern C++20, and run your code
autocmd FileType cpp nnoremap <F4> :w <bar> !g++ -std=c++20 % -o %< && ./%< <CR>
" Map Enter to act like Ctrl+y when the autocomplete menu is open
inoremap <expr> <CR> coc#pum#visible() ? "\<C-y>" : "\<CR>"

" Code Navigation Shortcuts (LSP)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
