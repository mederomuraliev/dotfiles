"colorscheme ir_black
if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
    colorscheme railscasts
endif
"set term=gnome-256color
"colorscheme ir_black

"imap zx <esc>

map ,e :e <C-R>=expand("%:p:h")."\/"<CR>
map ,ph :e C:\web\phpclasses\esite\classes."\\"<CR>
map ,w :w <C-R>=expand("%:p:h")."\/"<CR>

map ,rc :e C:\Program Files\Vim\_vimrc
map ,cf :e C:\Program Files\Apache Group\Apache2\conf\sites
map ,ho :e C:\WINDOWS\system32\drivers\etc\hosts
map ,we :e C:\web\

map ,p I<p><esc>A</p><esc>
map ,ul I<ul><esc>A</ul><esc>
map ,li I<li><esc>A</li><esc>
map [u I<a href="http://<esc>ly$<esc>A"><esc>pA</a><esc>

set backspace=indent,eol,start whichwrap+=<,>,[,]
set autoindent
set smarttab
set smartindent
set expandtab
set encoding=utf-8
set fileencoding=utf-8
setglobal fileencoding=utf-8
set hidden
set hlsearch
set ignorecase
set sw=4
set nobackup
set nu
set noswapfile
set nowritebackup
filetype plugin indent on
syntax on
ab spana <span class="alt">
ab ema <em class="alt">

let g:miniBufExplMapCTabSwitchBufs = 1
" let VCSCommandCVSExec='C:\programs\cvs\cvs.exe'
let VCSCommandCVSExec='C:\programs\cvs\cvs.exe'

if exists("&guifont")
    if has("mac")
	set guifont=Monaco:h12
    elseif has("unix")
	if &guifont == ""
	    set guifont=bitstream\ vera\ sans\ mono\ 10
	endif
    elseif has("win32")
	set guifont=Consolas:h10,Courier\ New:h10
    endif
endif

" automatically open quickfix after grepping...
au QuickFixCmdPost * copen
au FileType html,javascript setlocal cin< smartindent
" au FileType html,javascript setlocal nocindent smartindent indentexpr=

set grepprg=grep\ -HnPR
set grepformat=%f:%l:%m

" set gfn=Bitstream_Vera_Sans_Mono:h10:cANSI
" set backspace=indent,start,eol
" map <C-Tab> :tabN<CR>
" imap zx <esc> 
" fix backspace
" set gfn=Consolas:h11:cANSI

function StringClose( string )
    echo a:string
    :bufdo if expand('%') =~ a:string | bd | endif
endfunction

function ReplaceChars()
    :silent! s,“,",g
    :silent! s,”,",g
    :silent! s,½,&frac12;,g
    :silent! s,…,...,g
    :silent! s,’,',g
    :silent! s,–,-,g
endfunction

command! -nargs=? StrClose call StringClose(<q-args>)
command! -nargs=0 ReplaceChars call ReplaceChars()

let VCSCommandCVSExec="/usr/bin/cvs"

"cabbr js !js /home/meder/jslint/runjslint.js "`cat %`" \| /home/meder/jslint/format.py

"autocmd FileType html source ~/.vim/scripts/sparkup.vim
imap ,/ </<C-X><C-O>
