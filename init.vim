let mapleader = ","
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <leader><TAB> :tabnew<cr>
noremap <leader>gs :CocSearch 
noremap <leader>fs :Files<cr>
noremap <leader>no :noh<cr>
noremap <leader><cr> <cr><c-w>h:q<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

filetype plugin on

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'rust-lang/rust.vim'
Plug 'KabbAmine/vCoolor.vim'
Plug 'preservim/nerdcommenter'
Plug 'vim-scripts/c.vim'
Plug 'alvan/vim-closetag'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'mattn/emmet-vim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'APZelos/blamer.nvim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'terryma/vim-multiple-cursors'
Plug 'whatyouhide/vim-gotham'
Plug 'wadackel/vim-dogrun'
Plug 'tomlion/vim-solidity'
Plug 'maksimr/vim-jsbeautify'
call plug#end()

set number 				"muestra los numeros de cada linea en la parte izquierda 
set relativenumber 			"la distribucion de los numeros en lineas de manera relativa
set mouse=a 				"permite la interaccion con el mouse
set noshowmode				"me deja de mostrar el modo en el que estamos 'normal, insert, visual, etc'
syntax enable 				"activa el coloreado de sintaxis en algunos tipos de archivos como html, c, c++
set encoding=utf-8 			"permite setear la codificación de archivos para aceptar caracteres especiales
set sw=4 				"la indentación genera 4 espacios
"set nowrap				"el texto en una linea no baja a la siguiente, solo continua en la misma hasta el infinito.
"set noswapfile				"para evitar el mensaje que sale al abrir algunos archivos sobre swap.
set clipboard=unnamed
set tabstop=4
set shiftwidth=4
"set autoindent
"set filetype=html           # abbrev -  :set ft=html
"set smartindent             # abbrev -  :set si
set expandtab
%retab!

autocmd FileType html noremap <buffer> <leader>ht :call HtmlBeautify()<cr>

let g:html_indent_inctags = "html,body,head,tbody"

let g:blamer_enabled = 1

let g:user_emmet_leader_key=',' 	"mapeando la tecla lider por una coma, con esto se completa los tag con doble coma.

"configuracion de vim-airline
let g:airline#extensions#tabline#enabled = 1	"muestra la linea de pestaña en la que estamos buffer
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:prettier#config#semi = 'false'
let g:prettier#config#trailing_comma = 'none'

let g:airline_theme='cobalt2'

let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
map  <Leader>t <Plug>(easymotion-bd-w)
nmap <Leader>t <Plug>(easymotion-overwin-w)
map <Leader>bu :Buffers<cr>
nmap <leader>in  <Plug>(coc-format-selected)

let g:NERDTreeChDirMode = 2
map <F2> :NERDTreeToggleVCS<CR>
map <F3> <C-\\><C-n>
map <TAB> :tabnext<CR>
map <S-TAB> :tabNext<CR>

set termguicolors
"colorscheme nord 
"colorscheme dogrun
colorscheme gotham
