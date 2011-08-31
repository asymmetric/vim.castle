call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

set nu
set statusline=%m\[%n\]%<\ %f:%l\ %h%r%w%y\ %{&ff}\ %=\ col:%c%V\ lin:%l\/%L\ %P
set laststatus=2
set hidden

augroup ftruby
	autocmd!
	autocmd FileType ruby set et sw=2 ts=2 sts=2
	autocmd FileType ruby highlight ExtraWhitespace ctermfg=15 ctermbg=4 guifg=#CF6A4C guibg=#420E09
	autocmd FileType ruby match ExtraWhitespace /\s\+$\| \+\ze\t/
augroup END

autocmd FileType sass set et sw=2 ts=2 sts=2
autocmd FileType javascript set et sw=2 ts=2 sts=2
"autocmd BufRead *.git/COMMIT_EDITMSG DiffGitCached | wincmd p
autocmd BufRead,BufNewFile *.less setfiletype css
autocmd BufRead,BufNewFile *.json setfiletype javascript
autocmd BufRead,BufNewFile *.dryml setfiletype html

autocmd FileType python set et sw=4 ts=4 sts=4

runtime macros/matchit.vim

function! VerticalSplitBuffer(buffer)
  execute "vert bo sb" a:buffer
endfunction

command! -nargs=1 -complete=buffer Vsb call VerticalSplitBuffer(<f-args>)
cabbr vsb Vsb

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

nnoremap <Leader>g :GundoToggle<CR>

nnoremap ` '
nnoremap ' `

nnoremap <Leader>b :TagbarOpenAutoClose<CR>
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'

set wildmenu
set wildmode=longest,full
set scrolloff=3

" remember marks, registers, searches, buffer list
"set viminfo='20,<50,s10,h,%

set nobackup
set nowritebackup
set noswapfile

set cursorline

colors solarized
