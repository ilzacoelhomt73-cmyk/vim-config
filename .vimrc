
" ==========================================
"              NANO VIM CONFIG
" ==========================================

" Aparência
syntax on
set termguicolors
set number
set norelativenumber
set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set background=dark
set signcolumn=yes
set scrolloff=5
set showmatch
set ruler
set hidden
set updatetime=300

" ==========================================
"              VIM-PLUG
" ==========================================

call plug#begin('~/.vim/plugged')

" Tema
Plug 'junegunn/seoul256.vim'
" auto-pairs

Plug 'jiangmiao/auto-pairs'

" Alinhamento
Plug 'junegunn/vim-easy-align'

" LSP / Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Explorador de arquivos
Plug 'preservim/nerdtree'

" Busca de arquivos
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Rust
Plug 'rust-lang/rust.vim'

" Go
Plug 'fatih/vim-go', {'tag': '*'}

call plug#end()

" ==========================================
"              TEMA DESERT
" ==========================================

set background=dark
colorscheme catppuccin_mocha

" ==========================================
"              CORES
" ==========================================

highlight Normal ctermbg=NONE
highlight NonText ctermbg=NONE
highlight EndOfBuffer ctermbg=NONE

" Números das linhas em cinza
highlight LineNr ctermfg=grey guifg=#808080
highlight CursorLineNr ctermfg=grey guifg=#808080

" ==========================================
"              COC.NVIM
" ==========================================

set completeopt=menuone,noinsert,noselect

" Ir para definição
nmap gd <Plug>(coc-definition)

" Ir para referências
nmap gr <Plug>(coc-references)

" Ir para implementação
nmap gi <Plug>(coc-implementation)

" Mostrar documentação
nnoremap K :call CocActionAsync('doHover')<CR>

" Diagnósticos anteriores e próximos
nmap [g <Plug>(coc-diagnostic-prev)
nmap ]g <Plug>(coc-diagnostic-next)

" Renomear variável
nmap <leader>rn <Plug>(coc-rename)

" Formatar código
nmap <leader>f <Plug>(coc-format)

" Aceitar autocomplete com Enter
inoremap <expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" ==========================================
"              NERDTREE
" ==========================================

nnoremap <C-n> :NERDTreeToggle<CR>

" ==========================================
"              FZF
" ==========================================

nnoremap <C-p> :Files<CR>
nnoremap <C-f> :Rg<CR>

" ==========================================
"              INDENTAÇÃO
" ==========================================

filetype plugin indent on

" ==========================================
"              FINAL
" ==========================================

