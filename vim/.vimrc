" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ryanoasis/vim-devicons'
Plugin 'morhetz/gruvbox'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_debug=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "∆"
let g:syntastic_Dockerfile_checkers = ['dockerfile_lint']
let g:syntastic_python_checkers = ['python']
let g:syntastic_yaml_checkers = ['jsyaml']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_filetype_map = { 'Dockerfile': 'dockerfile' }
syntax on        "this is needed to see syntax
set background=dark  "makes it easier to read with black background
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox  "set theme in ./vim/colors folder
set ls=2            " allways show status line
set hlsearch        " highlight searches
"set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set ignorecase        "ignore case while searching
set number            "put numbers on side
filetype on
"filetype plugin on
"filetype indent on
"source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
"au FileType scss setl sw=2 sts=2 et
map <C-n> :NERDTreeToggle<CR>
set encoding=UTF8
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let g:NERDTreeShowIgnoredStatus = 1
"let g:NERDTreeGitUnchangedIndicator = '-'
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
