syntax on



"set *.gv files to dot syntax
au BufRead,BufNewFile *.gv set filetype=dot

" :nnoremap <Z> ~ " I keep hitting the wrong key on my keyboard
:nnoremap <Leader>0 $ " Much easier to type 
:nnoremap Q gqap " reformat paragraph (should be changed so that the cursor stays in place)

:nnoremap <C-Space> i  
:inoremap <C-Space> <Esc>

:set fo=m

"Turn off line wrapping 
:set nowrap

:set autoindent

" Turn off spell checking 
:set nospell

"Spellcheck set to F6
	map <F6> :setlocal spell! spelllang=pl<CR>
	map <F7> :set spelllang=en_US

" Typewriter scrolling 
:set scrolloff=999

autocmd FileType markdown setlocal nowrap
autocmd FileType markdown setlocal nospell

" autocmd FileType markdown setlocal foldcolumn=0


" augroup vimrc_autocmds
"   autocmd BufEnter * highlight OverLength ctermbg=lightgrey guibg=#592929
"   autocmd BufEnter * match OverLength /\%80v.*/
" augroup END

" =======================================================================

" Enable CursorLine
:set cursorline

" Default Colors for CursorLine 
:highlight  CursorLine ctermbg=None ctermfg=None

" Change Color when entering Insert Mode 
:autocmd InsertEnter * highlight CursorLine ctermbg=LightYellow ctermfg=Black

" Revert Color to default when leaving Insert Mode
:autocmd InsertLeave * highlight  CursorLine ctermbg=None ctermfg=None

" =======================================================================

:set ruler

:map Y y$

:set undofile 

"======================== 

:set number relativenumber

:augroup numbertoggle 
:  autocmd!  
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber 
: autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber 
::augroup END

" https://jeffkreeftmeijer.com/vim-number/

"======================== 
execute pathogen#infect()


"======================== 
"REQUIRED.  This makes vim invoke Latex-Suite when you open a tex file.
"http://vim-latex.sourceforge.net

filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you 
" search in a singe file. This will confuse Latex-Suite. Set your grep 
" program to always generate a file-name.  

set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.  

filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex'

:let g:tex_flavor='latex'
"======================== 
