syntax on
colorscheme desert

" Tabs
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" Colo Koehler
inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i
inoremap ' ''<Esc>:let leavechar="'"<CR>i
inoremap " ""<Esc>:let leavechar='"'<CR>i
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

" Remap esc
inoremap jk <ESC>

" Tabs remapping
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

set rtp+=~/.fzf

" Numbered lines
set relativenumber
set nu
