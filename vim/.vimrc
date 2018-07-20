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
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'vimwiki/vimwiki'
Plugin 'suan/vim-instant-markdown'
Plugin 'morhetz/gruvbox' "gruvbox colorscheme

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
let g:vimwiki_list = [{'path': '/Users/Thomas/Dropbox/research/wiki', 'syntax': 'markdown', 'ext': '.md'}]

" Instant markdown
let g:instant_markdown_autostart = 0
map <leader>md :InstantMarkdownPreview<CR>

" use F3 to create a timestamp 
map <F3> :r! date +"\%Y-\%m-\%d \%H:\%M:\%S"<cr>

""""""""""""""""""Vim-Latex"""""""""""""""""""""""""""""""""

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Fix Pdf Viewer on Mac
if has("unix") && match(system("uname"),'Darwin') != -1
    " It's a Mac!
    let g:Tex_ViewRule_pdf = 'open -a Preview.app' 
    let g:livepreview_previewer = 'open -a Preview.app' " use Preview pdf viewer on a Mac
endif   

" use \lx to switch compiler to xelatex. then use \ll to compile.
function SetXeTex()
    let g:Tex_CompileRule_pdf = 'xelatex -aux-directory=F:/Vim/my_latex_doc/temp --synctex=-1 -src-specials -interaction=nonstopmode $*'
endfunction
map <Leader>lx :<C-U>call SetXeTex()<CR>

""""""""""""""""Spell Check""""""""""""""""""""""""""""""""""""

set spelllang=en

""""""""""""""""Julia""""""""""""""""""""""""""""""""""""""""""

" .jl files are sometimes recognized as lisp files by default. This fixes it. 
autocmd BufRead,BufNewFile *.jl :set filetype=julia 

""""""""""""""""netrw""""""""""""""""""""""""""""""""""""""""""

let g:netrw_liststyle=3 " open netrw as a tree
let g:netrw_winsize=20 " smaller windowsize 
let g:netrw_banner = 0 " D: delete, R: rename, x: open
