" yank to system clipboard
inoremap <C-c> "+y
vnoremap <C-c> "+y

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Nerd Tree function
function! ToggleNERDTree()
  NERDTreeToggle
  silent NERDTreeMirror
endfunction

nnoremap <leader><Tab> :NERDTreeToggle<CR>

" Search for visually highlighted word
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" git-fugitive mappings
nnoremap <leader>gh :diffget //3<CR>
nnoremap <leader>gu :diffget //2<CR>
nnoremap <leader>gs :G<CR>
nnoremap <leader>gc :Git commit<CR>

" fzf
nnoremap <leader>z :FZF<cr>
nnoremap // :BLines!<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap ?? :Rg!<CR>

" Emmet mappings
let g:user_emmet_expandabbr_key=',<Tab>'
let g:user_emmet_togglecomment_key=',t'

" mappings for vim-test
"   https://github.com/vim-test/vim-test
nnoremap <silent> t<C-n> :TestNearest<CR>
nnoremap <silent> t<C-f> :TestFile<CR>
nnoremap <silent> t<C-s> :TestSuite<CR>
nnoremap <silent> t<C-l> :TestLast<CR>
nnoremap <silent> t<C-g> :TestVisit<CR>

" remap esc
inoremap jk <ESC>
vnoremap jk <ESC>

" Indent Guides Toggle
nnoremap <silent> ig :IndentGuidesToggle<cr>

" auto indent correction
nnoremap <F7> gg=<C-o><C-o>

" Auto create matching pairs
nnoremap <silent> <F3> :call ToggleNERDTree()<CR>
inoremap (( ()<Esc>:let leavechar=")"<CR>i
inoremap [[ []<Esc>:let leavechar="]"<CR>i
inoremap {{ {}<Esc>:let leavechar="}"<CR>i
inoremap '' ''<Esc>:let leavechar="'"<CR>i
inoremap `` ``<Esc>:let leavechar="`"<CR>i
inoremap "" ""<Esc>:let leavechar='"'<CR>i
inoremap 3" """"""<Esc>hhi
inoremap <C-j> <Esc>/[)}"'\]`>]<CR>:nohl<CR>a

" Easier navigating between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" resize splits
nnoremap <leader>df :vertical resize +
nnoremap <leader>fd :vertical resize -
nnoremap <leader>de :resize +
nnoremap <leader>dc :resize -
nnoremap <leader><leader>e <C-w>=<CR>

" Shortcut split opening
nnoremap <leader>h :split<space>
nnoremap <leader>v :vsplit<space>

" toggle numbered lines
nnoremap <leader>tt :set nu! relativenumber!<CR>

" set split orientation
set splitbelow splitright

" tabs remaps
nnoremap tn :tabnew<Space>
nnoremap te :tabe<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap tm :tabm<Space>

" Place Helpfile on right side of window
" nnoremap <leader>h :vert help

" open init.vim in new split | reload vimrc changes
nnoremap <leader>ev :vsplit $MYNVIMRC<CR>
nnoremap <leader>sv :so $MYNVIMRC<CR>

" open bufer list
nnoremap <leader>bb :buffers<CR>

" quote wrap words
nnoremap <leader>" viw<ESC>a"<ESC>bi"<ESC>lel
nnoremap <leader>' viw<ESC>a'<ESC>bi'<ESC>lel

" self Definded mappings
" Enter date
nnoremap <leader>dt "ad$<ESC>:r !date<CR>i<BS><ESC>$bbdwd6b$"ap

" self Defined abbreviations
" Quick brown fox
"
iabbrev qbf. The quick brown fox jumps over the lazy dog.
iabbrev nlb --------------------------------------------------------------------------------
