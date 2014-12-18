 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 Bundle 'scrooloose/nerdtree'
 Bundle 'msanders/snipmate.vim'
 Bundle 'groenewege/vim-less'
 Bundle 'jnwhiteh/vim-golang'
 Bundle 'nsf/gocode', {'rtp': 'vim/'}
 Bundle "pangloss/vim-javascript"
 Bundle "myhere/vim-nodejs-complete"
 Bundle 'tpope/vim-dispatch'
 Bundle 'kien/ctrlp.vim'
 Bundle 'Lokaltog/vim-powerline'
 Bundle 'StanAngeloff/php.vim'
 Bundle 'godlygeek/tabular'
 Bundle 'hallison/vim-markdown'
 " Bundle 'ervandew/supertab'
 " Bundle 'tempire/slimv'

 " vim-scripts repos
 Bundle 'L9'
 " Bundle 'FuzzyFinder'
 Bundle 'matchit.zip'
 Bundle 'The-NERD-Commenter'
 Bundle 'taglist.vim'
 Bundle 'VimClojure'
 Bundle 'Indent-Guides'
 Bundle 'grep.vim'
 " non github repos
 " Bundle 'git://git.wincent.com/command-t.git'
 " ...

 filetype plugin indent on     " required! 
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

" yxh's settings:

syntax on "syntax highlight 

" Indent Guides{
let g:indent_guides_guide_size=1
" let g:indent_guides_enable_on_vim_startup = 1
" }

" TAB setting{
   set expandtab        "replace <TAB> with spaces
   set softtabstop=4
   set shiftwidth=4

   " PHP setting{
        au FileType php set softtabstop=4
        au FileType php set shiftwidth=4
        au FileType php set expandtab
   " }
   "
   " JS setting{
        au FileType js set softtabstop=2
        au FileType js set shiftwidth=2
        au FileType js set expandtab
   " }

   " Makefile setting{
        au FileType Makefile set noexpandtab
   " }
"} 

" chinese env
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

set bs=2      " allow backspacing over everything in insert mode
set autoread 	" auto read when file is changed from outside
set nu 		" show line number
set ruler 	" show the cursor position all the time
set showmatch	" Cursor shows matching ) and }
set ignorecase  " ignore case when searching
set nobackup    " no *~ backup files

set wildignore=*.o,*.class,*.pyc " 忽略这些文件名

" set leader to ,
let mapleader=","
let g:mapleader=","

" ,, start easymotion
let g:EasyMotion_leader_key = '<Leader>,'

" go to prev tab 
map <S-H> gT
" go to next tab
map <S-L> gt
" go below split
map <C-J> <C-W>j<C-W>
" go above split
map <C-L> <C-W>l<C-W>

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>

" ,o toogles line number
nmap <leader>o :set nu!<BAR>set nonu?<CR>

" ,n toggles neardtree
nmap <leader>n :NERDTreeToggle <CR>

" Writing Restructured Text (Sphinx Documentation) {
   " Ctrl-u 1:    underline Parts w/ #'s
   noremap  <C-u>1 yyPVr#yyjp
   inoremap <C-u>1 <esc>yyPVr#yyjpA
   " Ctrl-u 2:    underline Chapters w/ *'s
   noremap  <C-u>2 yyPVr*yyjp
   inoremap <C-u>2 <esc>yyPVr*yyjpA
   " Ctrl-u 3:    underline Section Level 1 w/ ='s
   noremap  <C-u>3 yypVr=
   inoremap <C-u>3 <esc>yypVr=A
   " Ctrl-u 4:    underline Section Level 2 w/ -'s
   noremap  <C-u>4 yypVr-
   inoremap <C-u>4 <esc>yypVr-A
   " Ctrl-u 5:    underline Section Level 3 w/ ^'s
   noremap  <C-u>5 yypVr^
   inoremap <C-u>5 <esc>yypVr^A
"}
iab iidate <c-r>=strftime("20%y年%m月%d日 %H:%M:%S")<cr>
let g:snips_author='wiboshu <wiboshu@gmail.com>'
set laststatus=2
" ctrlp不随打开文件自动变更工作目录 
let g:ctrlp_working_path_mode = 'a'
" 打开marker折叠方式
set foldmethod=marker
" 打开对php语法代码折叠
let php_folding=1

