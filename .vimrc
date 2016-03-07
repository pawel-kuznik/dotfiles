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

"   Force utf-8 encoding
set encoding=utf-8

"   Show existing tab with 4 spaces width
set tabstop=4

"   When indenting with '>', use 4 spaces width
set shiftwidth=4

"   On pressing tab, insert 4 spaces
set expandtab

"   I am a coder. I don't need my lines to be wrapped.
set nowrap

"   Initially we want to have hybrid numbers
set number
set relativenumber

"   When we are inserting there is no point 
"   in relative number, but we we are moving
"   relative numbers are quite handy
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

"   The 'vim! go sudo!' trick
cmap w!! w !sudo tee > /dev/null %

"   Start infecting
execute pathogen#infect()

"   Set the color scheme
set t_Co=256
syntax enable
set background=dark
colorscheme solarized

"   Set additional solarized options 
let g:solarized_termtrans=1
let g:solarized_termcolor=256

"
"   Below lines are for NERDTree plugin
"

"   Map NERDTree extension to use 
map <C-m> :NERDTreeToggle<CR>

"   
"   Below lines are for vim-airline plugin
"

"   Below supposedly fixes something with fonts.
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif
let g:airline_symbols.space = "\ua0"

"   Don't show default status line
set noshowmode

"   Manually set the theme cause sometimes it's going quite crazy
let g:airline_theme='solarized'

"   Set airline to appear all the time
set laststatus=2

"   Set nice looking symbols for airline plugin. Note that powerline patched
"   fonts will be required for this setting.
let g:airline_powerline_fonts=1
