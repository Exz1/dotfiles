set runtimepath +=~/.vim/bundle/Vundle.vim


"init
set encoding    =utf8
set t_Co        =256
set ts          =4
set relativenumber
set guicursor=a:blinkon0
syntax on


"gui config
set guioptions  -=m
set guioptions  -=T
set guioptions  -=r
set guioptions  -=L


"Plugins
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'lilydjwg/colorizer'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-eunuch'
Plugin 'pangloss/vim-javascript'
Plugin 'mhartington/oceanic-next'
Plugin 'mildred/vim-bufmru'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Valloric/YouCompleteMe'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'ternjs/tern_for_vim'
call vundle#end()

autocmd FileType javascript setlocal omnifunc=tern#Complete
"autocmd FileType nerdtree setlocal nolist
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

"common config
"let g:session_autoload                       = 'yes'
let g:session_default_to_last                = 1
let g:session_autosave                       = 'yes'
let g:session_autosave_periodic              = 10
let g:session_persist_colors                 = 0

let NERDTreeShowHidden                       = 1
let NERDTreeChDirMode                        = 2
let NERDTreeMinimalUI                        = 1
let NERDTreeDirArrow                         = 1

let g:airline_theme                          = 'spring_night'
let g:airline_powerline_fonts = 1
let g:indentguides_tabchar                   = '|'
let g:neocomplete#enable_at_startup          = 1

"let g:WebDevIconsNerdTreeAfterGlyphPadding   = '  '
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName    = 1
let g:NERDTreePatternMatchHighlightFullName  = 1
let g:NERDTreeLimitedSyntax                  = 1

let g:airline#extensions#tabline#enabled     = 1
let g:airline#extensions#tabline#fnamemod    = ':t'
let g:airline#extensions#tabline#left_sep    = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_inactive_collapse=1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.notexists = '∄'

"javascript syntax
set conceallevel=1
let g:javascript_conceal_arrow_function="➜ "

"mapping
"nnoremap <leader>s :ToggleWorkspace<CR>

map <leader>q   :bwipeout <CR>
map <C-p>   :NERDTreeToggle<cr>
map <Tab>   :BufMRUNext <cr>
map <S-Tab> :BufMRUPrev <cr>
map <F3>    :CloseSession <cr>
map <F2>    :OpenSession! default <cr>
map <F4>    :SaveSession <cr>
"map <a-1>   1gt <cr>
"map <a-2>   2gt <cr>
"map <a-3>   3gt <cr>
"map <a-4>   4gt <cr>
"map <a-5>   5gt <cr>
