filetype off
set nocompatible
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-commentary'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'morhetz/gruvbox'
Plugin 'ctrlpvim/ctrlp.vim'
" fuzzy finder for functions
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-ragtag'
Plugin 'ngmy/vim-rubocop'
" Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'tomtom/tcomment_vim'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'alvan/vim-closetag'
Plugin 'taglist.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mattn/emmet-vim'
Plugin 'sjl/gundo.vim'
"Plugin 'vim-scripts/YankRing.vim'
Plugin 'vim-scripts/mru.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
set exrc
filetype plugin indent on    " required
let g:gruvbox_italic=1
let g:gruvbox_termcolors=16
colorscheme gruvbox
autocmd!
set number
syntax on
set tags+=./tags;
set foldlevel=1
set showmatch
let mapleader=','
map <leader>fi :setlocal foldmethod=indent<cr>
map <leader>fs :setlocal foldmethod=syntax<cr>
map <leader>e :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
nmap <leader>r :NERDTreeFocus<cr> \| R \| <c-w><c-p>
map <leader>t :TlistToggle<CR>
map <C-F12> :!ctags -R --exclude=.git --exclude=logs --exclude=doc .<CR>
au BufRead,BufNewFile *.rb setlocal tags+=~/.vim/tags/ruby_and_gems
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_ruby_checkers = ['rubocop']
let g:yankring_replace_n_pkey = '<m-p>'
let g:yankring_replace_n_nkey = '<m-n>'
set expandtab
set autoindent
set background=dark
"autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype cpp setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
"autocmd Filetype erb setlocal tb=2 sts=2 sw=2
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
" CTRLP local working directory set as current file nearest git ancestor
let g:ctrlp_working_path_mode = 'ra'
let g:indentLine_setColors = 0
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_color_gui = '#A4E57E'
let g:ackprg = 'ag --nogroup --nocolor --column'
set list 
set listchars=tab:>- 
" Use tab and shift-tab to cycle through windows.
" nnoremap <Tab> <C-W>w
" nnoremap <S-Tab> <C-W>W
set incsearch
set ignorecase
set smartcase
set hlsearch
nnoremap <leader>l :setlocal number!<CR>
nnoremap <leader>q :nohlsearch<CR>
nnoremap \o :set paste!<CR>
nnoremap <leader>gs :Gstatus<CR>
inoremap jk <esc>
if has("vms")
  set nobackup
else
  set backup
  set undofile
endif
" Make CTRLP enter open files in new tab
" let g:ctrlp_prompt_mappings = {
    "\ 'AcceptSelection("e")': ['<c-t>'],
    "\ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    "\ }
" Open definition in new tab or new vertical split when using ctrP
"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
" custom ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip   

" ctrl p to fuzzy file finder
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Keymaps for system copy and paste 
noremap <leader>y "*y<CR>
noremap <leader>p "*p<CR>
noremap <leader>Y "+y<CR>
noremap <leader>P "+p<CR>
" ctrl + s to save files
noremap <leader>s :w<CR>
imap <leader>s <Esc>:w<CR>a
set guioptions-=T " remove icon toolbar
set guioptions-=m " remove menubar
set guioptions-=r " remove right-hand scroll bar
set guioptions-=L " remove left-hand scroll bar
"Smarter tabline vim-airline
"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='luna'
let g:Powerline_symbols='fancy'
"let g:airline#extensions#tabline#enabled = 1
" File names like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"
" display incomplete command in the lower right corner of vim window
set showcmd
"ctrlpfunky ctrl r for method search
nnoremap <Leader>p :CtrlPFunky<CR>
" nmap j gj
" nmap k gk
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Reopen previously opened file
nnoremap <Leader><Leader> :e#<CR>
nnoremap <Leader>w :bd<CR>
iabbrev bp binding.pry
iabbrev bph <% binding.pry %>
iabbrev jd debugger; 

" switch between buffers
":nnoremap <C-Tab> :bnext<CR>
":nnoremap <C-S-Tab> :bprevious<CR>
noremap <A-j> :bnext<CR>
noremap <A-k> :bprevious<CR>

" Shortcuts for moving between tabs.
" Alt-j to move to the tab to the left
"noremap <A-j> gT
" Alt-k to move to the tab to the right
"noremap <A-k> gt

" set default working directory in vim
cd /home/aditya/workspace/gor/gor_refactored
" set color column to 80
set colorcolumn=80
" for ctrl-a and ctrl-x escape octal numbers
" treat all numerals as decimals even if they are
" appended with zero
set nrformats=
" set global maps for rag tag vim
let g:ragtag_global_maps = 1
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
" set history to 200 lines
set history=200
" in command line mode set c-p and c-n to map up and down arrows
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" Buffer mappings
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
