call plug#begin('~/.local/share/nvim/plugged')

    " airline is a better status line and a tab-bar for nvim.
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Base 16 theme
    "Plug 'chriskempson/base16-vim'
    Plug 'vim-scripts/Zenburn'
    Plug 'morhetz/gruvbox'

    " File explorer
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'

    " ctrl-p is a fuzzy file finder.
    Plug 'kien/ctrlp.vim'

call plug#end()

let mapleader="\<SPACE>"

set showmatch           " Show matching brackets.
set number              " Show the line numbers on the left side.
set relativenumber
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=4           " Render TABs using this many spaces.
set shiftwidth=4        " Indentation amount for < and > commands.
set nostartofline       " Do not jump to first character with page commands.

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).
set encoding=utf-8

"create undodir
set undofile
set undodir=~/.vim/undo "create undo directory

"set directory for swap files
set directory=~/.vim/swap "create swap directory


"#let base16colorspace=256  " Access colors present in 256 colorspace
"colorscheme base16-default-dark
"colorscheme zenburn


" Gruvbox Theme
colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_contrast_light='soft'

" Plugin Settings {
    " Airline {
"        let g:airline_theme='zenburn'
    " }
" }

" nerdtree-git-plugin settings
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" vim:set ft=vim sw=4 ts=4:

