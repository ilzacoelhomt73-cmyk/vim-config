
" ==========================================
"              NANO VIM CONFIG
" ==========================================

" ==========================================
"              APARÊNCIA
" ==========================================

syntax on
set termguicolors
set number
set norelativenumber
set cursorline
set background=dark
set signcolumn=yes
set scrolloff=5
set showmatch
set ruler
set hidden
set updatetime=300

" ==========================================
"              INDENTAÇÃO
" ==========================================

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set cindent
filetype plugin indent on

" ==========================================
"              VIM-PLUG
" ==========================================

call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', {'tag': '*'}

call plug#end()

" ==========================================
"              AUTO PAIRS
" ==========================================

let g:AutoPairsMapCR = 0

" ==========================================
"              TEMA
" ==========================================

set background=dark
colorscheme catppuccin_mocha

" ==========================================
"              CORES
" ==========================================

highlight Normal ctermbg=NONE
highlight NonText ctermbg=NONE
highlight EndOfBuffer ctermbg=NONE
highlight LineNr ctermfg=grey guifg=#808080
highlight CursorLineNr ctermfg=grey guifg=#808080

" ==========================================
"              COC.NVIM
" ==========================================

set completeopt=menuone,noinsert

nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)
nmap gi <Plug>(coc-implementation)

nnoremap K :call CocActionAsync('doHover')<CR>

nmap [g <Plug>(coc-diagnostic-prev)
nmap ]g <Plug>(coc-diagnostic-next)

nmap <leader>rn <Plug>(coc-rename)
nmap <leader>f <Plug>(coc-format)

" ==========================================
"              ENTER INTELIGENTE
" ==========================================

function! SmartEnter()
    if coc#pum#visible()
        return coc#_select_confirm()
    endif

    let l:line = getline('.')
    let l:col = col('.') - 1
    let l:before = strpart(l:line, 0, l:col)
    let l:after = strpart(l:line, l:col)

    if l:before =~ '{\s*$' && l:after =~ '^\s*}'
        return "\<CR>\<C-t>\<CR>\<C-d>\<Up>\<End>"
    endif

    return "\<CR>"
endfunction

inoremap <silent><expr> <CR> SmartEnter()

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
"              FINAL
" ==========================================

