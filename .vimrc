" Plugins will be downloaded under the specified directory. 

call plug#begin('~/.vim/plugged') 


" Declare the list of plugins. 

Plug 'tpope/vim-surround' 
Plug 'vim-scripts/VisIncr' 
Plug 'heavenshell/vim-jsdoc' 

Plug 'easymotion/vim-easymotion' 
Plug 'junegunn/vim-easy-align' 
Plug 'junegunn/goyo.vim' 
Plug 'junegunn/seoul256.vim' 
Plug 'scrooloose/nerdtree', {'on' : 'NERDTreeToggle'} 
Plug 'tpope/vim-repeat' 
Plug 'kien/ctrlp.vim' 
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 

Plug 'scrooloose/nerdcommenter' 
Plug 'kennykaye/vim-relativity' 


" List ends here. Plugins become visible to Vim after this call. 
call plug#end() 

" ESC대용키 지정 
inoremap jk <ESC> 

" set cursor type as block in normal mode, steady bar in edit mode 
let &t_SI = "\e[6 q" 
let &t_EI = "\e[2 q" 

" Optionally reset the cursor on start: 
augroup myCmds
au! 
autocmd VimEnter * silent !echo -ne "\e[2 q" 
augroup END 

" Other options (replace the number after \e[): 
"  

" Ps = 0  -> blinking block. 
" Ps = 1  -> blinking block (default). 
" Ps = 2  -> steady block. 
" Ps = 3  -> blinking underline. 
" Ps = 4  -> steady underline. 
" Ps = 5  -> blinking bar (xterm). 
" Ps = 6  -> steady bar (xterm). 
" End of setting the cursor type 

set tabstop=2     " The width of a TAB is set to 4.
                  " Still it is a \t. It is just that
                  " Vim will interpret it to be having
                  " a width of 4.

set expandtab     " On pressing tab, insert 4 spaces 

set shiftwidth=2  " Indents will have a width of 4 

set softtabstop=2 " Sets the number of columns for a TAB 

set backspace=indent,eol,start   " allow backspacing over everything in insert mode 

"set autoindent        " allow backspacing over everything in insert mode 
"set nu 

set noai nocin inde=

" window와 vim간 clipboard 공유 
"set clipboard=unnamedplus  " for Linux 

set clipboard=unnamed       " for Windows, MacOS 


"set paste 
syntax enable 

set mouse=a       " 마우스 사용 가능(이동, 블록설정, 스크롤) 

set hlsearch      " set hightlight search - turn off highlight by :noh 

set incsearch     " set incremental search 

set ignorecase    " ignore case 

set smartcase     " do not ignore case when capital letter is included 

set cursorline    " set cursorline highlight 

"langmap for Korean keyboard 

set langmap=ㅁa,ㅠb,ㅊc,ㅇd,ㄷe,ㄹf,ㅎg,ㅗh,ㅑi,ㅓj,ㅏk,ㅣl,ㅡm,ㅜn,ㅐo,ㅔp,ㅂq,ㄱr,ㄴs,ㅅt,ㅕu,ㅍv,ㅈw,ㅌx,ㅛy,ㅋz 


" for vim-airline 

let g:airline#extensions#enabled = 1 " turn on buffer list 
let g:airline_theme='minimalist' 
set laststatus=2 " turn on bottom bar 


" NERDTree용 단축키 지정. F9토글. 윈도우사이는 C-W, w(또는 방향키) 

nmap <F9> :NERDTree<CR>
nmap <F9> :NERDTreeToggle<CR>


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)


" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


filetype plugin on 


let mapleader=" "      "mapleader key를 space key로 지정 

nmap <leader>n :NERDTreeToggle<cr> 
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" <C-f>는 one page forward라서 다른 키로 지정하려고 하는데 <A-f>, <C-S-f> 등 안 먹힘 

" nnoremap <C-A-f> :NERDTreeFind<CR>

set timeout timeoutlen=1000     "inoremap key의 대기시간 설정 

" Easy Motion : 일반적으로 쓰는 경우 
map <leader><leader>f <Plug>(easymotion-overwin-f)
map <leader><leader>w <Plug>(easymotion-overwin-w)
map <leader><leader>. <Plug>(easymotion-repeat)

" Minimal Configuration for easymotion : 키 조합을 최소로 하는 easymotion 
let g:EasyMotion_do_mapping = 0

" s for one character search overwin(소문자 s) 
nmap s <Plug>(easymotion-overwin-f)

" S for two character search overwin(대문자 S) 
nmap S <Plug>(easymotion-overwin-f2)

" tab설정 
nmap <leader>tn :tabn<CR>
nmap <leader>tp :tabp<CR>
nmap <leader>tt :tabnew<CR>
nmap <leader>to :tabo<CR>


let g:ctrlp_working_path_mode = 'ca'
let g:ctrlp_match_window = 'results:20'

"let g:ctrlp_user_command = 'ls -a %s'

" Color scheme for seoul256.vim(START)

" Unified color scheme (default: dark)

" Range :233(darkest) ~ 239(lightest)

" default : 235 

let g:seoul256_background = 235
colo seoul256


" " Light color scheme 

" " Range :252(darkest) ~ 256(lightest) 

" " default : 254

" let g:seoul256_light_background = 254

" colo seoul256-light

"  

" set background=dark 

" " Switch 

" " Color scheme for seoul256.vim(END) 
