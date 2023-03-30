""""""""""""""""""""""""""""""""""""""""""""""""""
" My vimrc
" author: Thomas Hasenzagl, thomas.hasenzagl@gmail.com
""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
          
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
          
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'tmhedberg/SimpylFold' " python folding
Plugin 'christoomey/vim-tmux-navigator' "tmux split screen navigation
Plugin 'morhetz/gruvbox' "gruvbox colorscheme
Plugin 'lervag/vimtex' "latex integration for vim
Plugin 'jpalardy/vim-slime' "send text to live REPL 

" All of your Plugins must be added before the following line
call vundle#end() 
filetype plugin on

"""""""""""""""""""Silence Python3 (NOT IDEAL)""""""""""""""""
if has('python3')
  silent! python3 1
endif

"""""""""""""""""""map <Esc> to jj""""""""""""""""""""""""""""
imap jj <Esc> 

"""""""""""""""""""LineNumbers""""""""""""""""""""""""""""""""
set nu

"""""""""""""""""""tabs,spaces,indents""""""""""""""""""""""""
set tabstop=4

"""""""""""""""""""Colorscheme"""""""""""""""""""""""""""""""
colorscheme gruvbox 
set nocompatible
set bg=dark
syntax on

""""""""""""""""""Split Screen"""""""""""""""""""""""""""""""
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""""""""""""""Copy Paste Integration""""""""""""""""""""
set clipboard=unnamed

""""""""""""""""""Vimtex""""""""""""""""""""""""""""""""""""
" Change default target to pdf, if not dvi is used
let g:Tex_DefaultTargetFormat = 'pdf'
 
" Setup the compile rule for pdf to use pdflatex with synctex enabled
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*' 
 
" PDF display rule
let g:vimtex_view_method = 'skim'

let g:vimtex_view_general_options = '-r @line @pdf @tex'

" Set up vim-slime for tmux
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste" "default
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"} " special token as pane index
