syntax enable        " enable syntax processing
set nowrap           " turn off word wapring/wrapping
set noerrorbells     " no error bells
set tabstop=2        " number of visual spaces per tab
set softtabstop=2    " number of spaces in tab when editing
set shiftwidth=2     " number of spaces with << and >>
set expandtab        " tabs are spaces
set rnu              " show relative numbering
set nu               " show the line number the cursor is at
set wildmenu         " visual autocomplete for command menu
set showmatch        " hightlight matching [{()}]
set incsearch        " search as characters are entered
set hlsearch         " highlight search matches
set colorcolumn=80   " highlight column
set linebreak        " only break between words
set smartindent      " indents according to the syntax/style of code
set cmdheight=2      " height of the command line area
set updatetime=50    " time in ms before plugins work after the last keystroke
set noswapfile       " no swap files
set nobackup         " no backups

" Setting colorcolumn to grey color
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Vim-Plug. Plugins stored in the mentioned dir.
call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'rstacruz/vim-closer'
Plug 'unblevable/quick-scope'

call plug#end()

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

" Gruvbox Theme Setup
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

"Key Bindings

"Easy navigation betwen windows
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j

"Creating new vertical window
nnoremap <C-n> :vnew<CR>

"CTRL bindings for cut copy paste undo
vnoremap <C-c> y
inoremap <C-p> p
vnoremap <C-z> u
vnoremap <C-x> x
nnoremap <C-s> :w<CR>

"Nerd tree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"For displaying trailing spaces and tabs.
:set listchars=tab:>·,trail:~,space:·
:set list

