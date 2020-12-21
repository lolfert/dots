" <-- Colors & Syntax ------------------------------------------------------>

set t_Co=256                                    " 256 Bit Color
syntax on                                       " Syntax Highlighting
"colorscheme pulumi

highlight Normal                ctermbg=NONE
highlight LineNr                ctermbg=NONE       ctermfg=2          
highlight Comment               ctermfg=3
highlight Search                ctermbg=2          ctermfg=15
highlight SignColumn            ctermbg=NONE
highlight VertSplit             ctermbg=NONE       ctermfg=3
highlight CursorLine            ctermbg=1
highlight CursorLineNR          ctermbg=1          ctermfg=14


highlight CocErrorSign          ctermbg=NONE       ctermfg=9
highlight CocWarningSign        ctermbg=NONE       ctermfg=11
highlight CocInfoSign           ctermbg=NONE       ctermfg=13
highlight CocHintSign           ctermbg=NONE       ctermfg=14

highlight CocErrorLine          ctermbg=0          ctermfg=NONE
highlight CocWarningLine        ctermbg=NONE       ctermfg=NONE
highlight CocInfoLine           ctermbg=NONE       ctermfg=NONE
highlight CocHintLine           ctermbg=NONE       ctermfg=NONE
   
highlight CocErrorHighlight     ctermbg=NONE       ctermfg=NONE
highlight CocWarningHighlight   ctermbg=NONE       ctermfg=NONE
highlight CocInfoHighlight      ctermbg=NONE       ctermfg=NONE
highlight CocHintHighlight      ctermbg=NONE       ctermfg=NONE
highlight CocHighlightText      ctermbg=NONE       ctermfg=NONE
   
highlight CocFloating           ctermbg=3          ctermfg=NONE
highlight CocErrorFloat         ctermbg=3          ctermfg=NONE
highlight CocWarningFloat       ctermbg=3          ctermfg=NONE
highlight CocInfoFloat          ctermbg=3          ctermfg=NONE
highlight CocHintFloat          ctermbg=3          ctermfg=NONE

" <-- Line Numbering ------------------------------------------------------->

set number
set relativenumber

" <-- Indentation ---------------------------------------------------------->

set tabstop=6                                   " Tab Width
set shiftwidth=6                                " Tab Width
set expandtab                                   " Convert tabs to spaces
set autoindent                                  " Automatically Indent Lines
set smarttab                                    " Better Indentation
set smartindent                                 " Even Better Indentation

" <-- Plugin Declarations -------------------------------------------------->

set shell=/bin/bash                             " Override Preferred Shell
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

   Plugin 'VundleVim/Vundle.vim'                " Plugin Manager
   Plugin 'w0rp/ale'                            " Syntax & Linting
   Plugin 'neoclide/coc.nvim'                   " Vim Intellisense
   Plugin 'mitermayer/vim-prettier'             " Code Formatting
   Plugin 'raimondi/delimitmate'                " Bracket Closing
   Plugin 'yggdroot/indentline'                 " Indentation Lines
   Plugin 'tomtom/tcomment_vim'                 " Autocommenting

   Plugin 'lervag/vimtex'                       " Latex Support
   Plugin 'mattn/emmet-vim'                     " Emmet Abbreviations
   Plugin 'CSSMinister'                         " Color Conversion

   Plugin 'slim-template/vim-slim'              " General Syntax
   Plugin 'pangloss/vim-javascript'             " Javascript Syntax
   Plugin 'hdima/python-syntax'                 " Python Syntax
   Plugin 'elzr/vim-json'                       " JSON Syntax
   Plugin 'digitaltoad/vim-jade'                " Markup Syntax
   Plugin 'cakebaker/scss-syntax.vim'           " SASS Syntax
   Plugin 'beyondmarc/glsl.vim'                 " GLSL Syntax

call vundle#end()

filetype plugin indent on

" <-- Keybindings ---------------------------------------------------------->

noremap    <silent>             <C-n>            :CocCommand explorer    <CR>
noremap    <silent>             <C-S-Up>         :vertical resize +1     <CR>
noremap    <silent>             <C-S-Down>       :vertical resize -1     <CR>
noremap    <silent>             <C-S-Left>       :resize +1              <CR>
noremap    <silent>             <C-S-Right>      :resize -1              <CR>
noremap    <silent>             <C-S-Right>      :resize -1              <CR>
noremap    <silent>             <C-Bslash>       :VimtexCompile          <CR>

" <-- Fixes & Misc. -------------------------------------------------------->

set wrap!                                       " Disable Line Wrapping
set undofile                                    " Persisting Undo History
set undodir=~/.vim/undo                         " Set Undo History Folder
set clipboard=unnamedplus                       " Yank to System Clipboard
set hidden                                      " Allow Multiple Buffers
set encoding=utf-8                              " Display Encoding
set fileencoding=utf-8                          " UTF-8 Encoded Writing
set pumheight=10                                " Popup Menu Height
set ruler              			            " Always show Cursor
set cmdheight=2                                 " Command Message Height
set iskeyword+=-                                " Treat all as single words
set mouse=a                                     " Enable mouse
set splitbelow                                  " Open H Splits Below
set splitright                                  " Open V Splits to Right
set laststatus=0                                " Always display statusline
set cursorline                                  " Highlight Current Line
set formatoptions-=cro                          " No Comment Continuation
set clipboard=unnamedplus                       " Copy to External Clipboard

" <-- Plugin-Specific Config Link ------------------------------------------>
"
if filereadable(expand('~/.vim/plugin-config.vim'))
  source ~/.vim/plugin-config.vim
endif
