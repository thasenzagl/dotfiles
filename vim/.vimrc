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
Plugin 'vimwiki/vimwiki'
Plugin 'suan/vim-instant-markdown'
Plugin 'morhetz/gruvbox' "gruvbox colorscheme
Plugin 'lervag/vimtex' "latex integration for vim
Plugin 'SirVer/ultisnips' " Track the engine.

" All of your Plugins must be added before the following line
call vundle#end() 
filetype plugin indent on 

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
set expandtab
set shiftwidth=4
set smarttab
set autoindent

"""""""""""""""""""Colorscheme"""""""""""""""""""""""""""""""
colorscheme gruvbox 

""""""""""""""""""Split Screen"""""""""""""""""""""""""""""""
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""""""""""""""Copy Paste Integration""""""""""""""""""""
set clipboard=unnamed

""""""""""""""""""Vimwiki"""""""""""""""""""""""""""""""""""
set nocompatible
filetype plugin on
syntax on

" Use markdown with vimwiki
let g:vimwiki_list = [{'path': '/Users/thomashasenzagl/dropbox/research/wiki', 'syntax': 'markdown', 'ext': '.md'}]

" Instant markdown
let g:instant_markdown_autostart = 0
map <leader>md :InstantMarkdownPreview<CR>

" use F3 to create a timestamp 
map <F3> :r! date +"\%Y-\%m-\%d \%H:\%M:\%S"<cr>

""""""""""""""""""Vimtex""""""""""""""""""""""""""""""""""""
" Change default target to pdf, if not dvi is used
let g:Tex_DefaultTargetFormat = 'pdf'
 
" Setup the compile rule for pdf to use pdflatex with synctex enabled
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*' 
 
" PDF display rule
let g:vimtex_view_method = 'skim'

let g:vimtex_view_general_options = '-r @line @pdf @tex'

""""""""""""""""""Snippets""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
