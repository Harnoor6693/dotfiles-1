" place this config file in `/usr/local/share/nvim/sysinit.vim`
" and run
" `sudo git clone https://github.com/VundleVim/Vundle.vim.git /usr/local/share/nvim/bundle/Vundle.vim`

" `vim`
" `:PluginInstall`

" if problems, remember -u option can be used to set path to .vim conf file
" then uncomment below line to path to Vundle.vim

" set rtp+=~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/usr/local/share/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'rust-lang/rust.vim'
Plugin 'ajh17/Spacegray.vim'
Plugin 'xuhdev/SingleCompile'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent off    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"SUGAR SYNTACT!

set background=dark
syntax on
"let g:gruvbox_italic=1
"let g:gruvbox_contrast_dark='hard'
"let g:gruvbox_contrast_light='hard'
colorscheme spacegray
set t_Co=256

set encoding=utf-8
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set expandtab
set number
set mouse=a
set title

highlight WhiteSpaces ctermbg=darkgreen guibg=darkgreen
match WhiteSpaces /\s\+$/

"SingleCompile plugin
nmap <F8> :SCCompile<cr>
nmap <F9> :SCCompileRun<cr>

"f, F insert character
nnoremap f :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap F :exec "normal a".nr2char(getchar())."\e"<CR>

"Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
" █
"highlight WhiteSpaces ctermbg=green guibg=#55aa55

"set list
"set listchars=tab:→\ ,trail:█,nbsp:-

hi NonText ctermbg=none
hi Normal guibg=NONE ctermbg=NONE
