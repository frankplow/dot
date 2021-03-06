" paths
set runtimepath=$VIM,$VIMRUNTIME,$HOME/.config/vim,$HOME/.config/vim/ftdetect
set packpath=$VIM/vimfiles,$VIMRUNTIME,$HOME/.config/vim/pack
set viminfo+=n~/.config/vim/viminfo

" plugins
call plug#begin("~/.config/vim/plugins")
" general useful plugins
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'lambdalisue/suda.vim'
command! W w suda://%

Plug 'bfrg/vim-cpp-modern'

" tex
Plug 'lervag/vimtex'
let g:tex_flavor="latex"
Plug 'SirVer/ultisnips'
let g:UltiSnipsSnippetDirectories=["~/.config/vim/UltiSnips"]
let g:UltiSnipsEditSplit = "tabdo"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
Plug 'preservim/vim-pencil'

" sqf
Plug 'sqwishy/vim-sqf-syntax'
call plug#end()

" line numbers
set number relativenumber
set cursorline
set cursorlineopt=number
set numberwidth=3

" tabs settings
set tabstop=4
set shiftwidth=4
set expandtab

" show new lines
set listchars=eol:¶

" borders
set fillchars+=vert:│
set fillchars+=fold:―

" searching
set ignorecase
set smartcase
set hlsearch

" wildmenu
set wildmenu
set wildmode=list:longest

" cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
autocmd VimEnter * silent !echo -ne "\e[2 q]"

" colours
set t_Co=16
set background=dark
try
    colorscheme ansi16
catch
endtry

" syntax
set conceallevel=2

" filetype-specfic
filetype plugin on

augroup pencil
    autocmd!
    autocmd FileType tex call pencil#init({"wrap": "soft"})
    autocmd FileType txt call pencil#init()
    autocmd FileType md  call pencil#init()
augroup END
