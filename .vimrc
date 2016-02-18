"   My personal vimrc file. This one was optimized for my personal taste
"   Don't like it? Don't use it. Eitherway be happy.
"   @author Paweł Kuźnik <pawel.kuznik@gmail.com>

filetype plugin indent on

"   function to toggle relative numbers
function! NumberToggle()
    if(&relativenumber == 1)
       set norelativenumber
    else
       set  relativenumber
    endif
endfunc

"   Add mapping to toggle numbers
" map <C-b> :call NumberToggle()<cr> 

"   Show existing tab with 4 spaces width
set tabstop=4

"   When indenting with '>', use 4 spaces width
set shiftwidth=4

"   On pressing tab, insert 4 spaces
set expandtab

"   Initially we want to have hybrid numbers
set number
set relativenumber

"   When we are inserting there is no point 
"   in relative number, but we we are moving
"   relative numbers are quite handy
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

"   Start infecting
execute pathogen#infect()

"   Set the color scheme
syntax enable
set background=light
colorscheme solarized

"   Set additional solarized options 
let g:solarized_termtrans=1
let g:solarized_termcolor=256

"   Map NERDTree extension to use 
map <C-m> :NERDTreeToggle<CR>

