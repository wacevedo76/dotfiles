" Terminal Mode remaps
nnoremap <leader>t :terminal<cr>
" yank to system clipboard
inoremap <C-c> "+y
vnoremap <C-c> "+y

" clear buffer
nnoremap <leader>Q :bufdo bdelete<cr>

" Open the current file in the default program
nnoremap <leader>X :!xdg-open %<cr><cr>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Nerd Tree function
function! ToggleNERDTree()
  NERDTreeToggle
  silent NERDTreeMirror
endfunction

nnoremap <leader><Tab> :NERDTreeToggle<cr>

" Search for visually highlighted word
vnoremap // y/\V<C-R>=escape(@",'/\')<cr><cr>

" git-fugitive mappings
nnoremap <leader>gh :diffget //3<cr>
nnoremap <leader>gu :diffget //2<cr>
nnoremap <leader>gs :G<cr>
nnoremap <leader>gc :Git commit<cr>

" fzf
nnoremap <leader>z :FZF<cr>
nnoremap // :BLines!<cr>
nnoremap <leader>F :Files<cr>
nnoremap <leader>B :Buffers<cr>
nnoremap <leader>H :History<cr>
nnoremap <leader>G :GFiles<cr>
nnoremap <leader>r :Rg<cr>
nnoremap ?? :Rg!<cr>

" Emmet mappings
let g:user_emmet_expandabbr_key=',<Tab>'
let g:user_emmet_togglecomment_key=',t'

" mappings for vim-test
"   https://github.com/vim-test/vim-test
nnoremap <silent> t<C-n> :TestNearest<cr>
nnoremap <silent> t<C-f> :TestFile<cr>
nnoremap <silent> t<C-s> :TestSuite<cr>
nnoremap <silent> t<C-l> :TestLast<cr>
nnoremap <silent> t<C-g> :TestVisit<cr>

" remap esc
inoremap jk <ESC>
vnoremap jk <ESC>
tnoremap jk <C-\><C-n>

" Indent Guides Toggle
nnoremap <silent> ig :IndentGuidesToggle<cr>

" auto indent correction
nnoremap <F7> gg=<C-o><C-o>

" Auto create matching pairs
nnoremap <silent> <F3> :call ToggleNERDTree()<cr>
inoremap (( ()<Esc>:let leavechar=")"<cr>i
inoremap [[ []<Esc>:let leavechar="]"<cr>i
inoremap {{ {}<Esc>:let leavechar="}"<cr>i
inoremap '' ''<Esc>:let leavechar="'"<cr>i
inoremap `` ``<Esc>:let leavechar="`"<cr>i
inoremap "" ""<Esc>:let leavechar='"'<cr>i
inoremap 3" """"""<Esc>hhi
inoremap <C-j> <Esc>/[)}"'\]`>]<cr>:nohl<cr>a

" Easier navigating between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" resize splits
nnoremap <C-Up> :resize +2<cr>
nnoremap <C-Down> :resize -2<cr>
nnoremap <C-Left> :vertical resize +2<cr>
nnoremap <C-Right> :vertical resize -2<cr>

" Stay in indent block mode
vnoremap < <gv
vnoremap > >gv

" Move text up ad down
" vnoremap <A-j> :m .+1==<cr>
" vnoremap <A-j> :m .-1==<cr>

" Shortcut split opening
nnoremap <leader>h :split<space>
nnoremap <leader>v :vsplit<space>

" toggle numbered lines
nnoremap <leader>tt :set nu! relativenumber!<cr>

" set split orientation
set splitbelow splitright

" tabs remaps
nnoremap tn :tabnew<Space>
nnoremap te :tabe<Space>
nnoremap tk :tabnext<cr>
nnoremap tj :tabprev<cr>
nnoremap th :tabfirst<cr>
nnoremap tl :tablast<cr>
nnoremap tm :tabm<Space>
nnoremap ht :tab help<Space>

" Buffer remaps
nnoremap bk :bnext<cr>
nnoremap bj :bprevious<cr>
nnoremap bl :blast<cr>
nnoremap bh :bfirst<cr>

" Place Helpfile on right side of window
" nnoremap <leader>h :vert help

" open init.vim in new split | reload vimrc changes
nnoremap <leader>ev :vsplit $MYNVIMRC<cr>
nnoremap <leader>sv :so $MYNVIMRC<cr>

" open bufer list
nnoremap <leader>bb :buffers<cr>

" quote wrap words
nnoremap <leader>" viw<ESC>a"<ESC>bi"<ESC>lel
nnoremap <leader>' viw<ESC>a'<ESC>bi'<ESC>lel

" self Definded mappings
" Enter date
nnoremap <leader>dt "ad$<ESC>:r !date<cr>i<BS><ESC>$bbdwd6b$"ap

" self Defined abbreviations
" Quick brown fox
"
iabbrev qbf. The quick brown fox jumps over the lazy dog.
iabbrev nlb --------------------------------------------------------------------------------
