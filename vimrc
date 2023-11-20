"let g:ycm_clangd_uses_ycmd_caching = 0 
let &pythonthreedll="C:/Users/taku/Program Files/python38/python38.dll"
let g:ycm_server_python_interpreter="C:/Users/taku/Program Files/python38/python"
let g:ycm_global_ycm_extra_conf = 'C:/Users/taku/vimfiles/.ycm_extra_conf.py'

filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'altercation/vim-colors-solarized'

" Plugin 'arcticicestudio/nord-vim'

Plugin 'preservim/nerdtree'
Plugin 'jremmen/vim-ripgrep'
Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'mbbill/undotree'

Plugin 'leafgarland/typescript-vim'
"Plugin 'vim-utils/vim-man'
" Plugin 'lyuts/vim-rtags'
"
Plugin 'bling/vim-bufferline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ycm-core/youcompleteme'

Plugin 'axvr/org.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'lervag/vimtex'

Plugin 'kalvinpearce/ShaderHighlight'
" Plugin 'my_plugin_after'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"


packadd termdebug

syntax on
set exrc  " local override of _vimrc or .vimrc
" disable error bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"set hidden
set belloff=all

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set relativenumber
set nowrap
set smartcase
set scrolloff=3
set sidescroll=1
set sidescrolloff=3
set guioptions=egt
set signcolumn=yes
set backspace=indent,eol,start
set incsearch
set hlsearch
set updatetime=1000

set noswapfile
set nobackup
set undodir=~/vimfiles/undodir
set undofile
set cursorline

set guicursor+=a:blinkon0

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" vimtex cinfig
set conceallevel=0


" -----------------------------------------------------
"  Color schemes
" -----------------------------------------------------
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
" colorscheme gruvbox 
"colorscheme solarized8
let g:onedark_terminal_italics=1

colorscheme onedark
" colorscheme palenight 
set background=dark
" set background=light
" colorscheme solarized

if (has("autocmd"))
  augroup colorextend
    autocmd!
    " Make `Function`s bold in GUI mode
    autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "bold" })
  augroup END
endif


hi Function cterm=bold
" -----------------------------------------------------

"set termguicolors

" set guifont=Ubuntu\ Mono:h16

set guifont=Ubuntu_Mono_derivative_Powerlin:h10:cANSI:qDRAFT
set guifontwide=HGGothicM:h10

set enc=utf-8
set fileencoding=utf-8
set listchars=trail:∙,extends:>,precedes:<,eol:¶
set list

au BufReadPost *.txt set syntax=org



set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
" language en                 " sets the language of the messages / UI (vim)

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:termdebug_wide=1

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 75

let mapleader = " "
let g:ycm_autoclose_preview_window_after_completion = 1

let mapleader=" "

" NerdTree settings
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
" let g:webdevicons_enable_nerdtree = 1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <Leader>op :NERDTreeToggle<CR>
" let g:NERDTreeDirArrowExpandable="➧"
let g:NERDTreeDirArrowExpandable="➤"
" let g:NERDTreeDirArrowExpandable=">"
" let g:NERDTreeDirArrowExpandable=""
let g:NERDTreeDirArrowCollapsible="▼"
" let g:NERDTreeDirArrowCollapsible="v"





" YCM settings
set completeopt-=preview
" let g:ycm_python_interpreter_path = '~/miniconda3/envs/plot/bin/python3.9'
let g:ycm_python_interpreter_path = 'C:/Users/taku/miniconda3/envs/math_env/python.exe'
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
let g:ycm_always_populate_location_list = 1

nnoremap <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>yd :YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf :YcmCompleter FixIt<CR>
nnoremap <silent> <leader>yf :YcmCompleter FixIt<CR>
nnoremap <leader>ys :YcmCompleter GoToSymbol<SPACE>
nnoremap <leader>yen :lnext<CR>
nnoremap <leader>yep :lprevious<CR>



"serch settings
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>pf :CtrlP<CR>
nnoremap <leader>ff :CtrlP<CR>
nnoremap <C-p> :CtrlP<CR>
nnoremap <leader>p<Esc> <Esc>
nnoremap <leader>pb :CtrlPBuffer<CR>
nnoremap <leader>bb :CtrlPBuffer<CR>
nnoremap <leader>bo :CtrlPMRU<CR>

" commentary
noremap <leader>/ :Commentary<CR>

" git
nnoremap <leader>gA :Git add .<CR>
nnoremap <leader>GA :Git add .<CR>
nnoremap <leader>ga :Git add %<CR>
nnoremap <leader>gg :Git commit<CR>
" nnoremap <leader>gg :Git commit -m "
" nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gs :Git<CR>
nnoremap <leader>g<Esc> <Esc>
nnoremap <leader>G<Esc> <Esc>


" status line settings
let g:bufferline_echo = 0


" Basic keybindings
"noremap <silent><C-g> <C-[>
"noremap <silent><C-g> <Esc>
"noremap! <C-g> <C-[>
"noremap! <C-g> <Esc>
"tnoremap <C-g> <C-[>
"tnoremap <C-g> <Esc>
"
"vnoremap <C-[> <C-[><C-[>
"inoremap <C-[> <C-[><C-[>
"
"noremap! <C-k> <Esc>
nnoremap s :w<CR>
noremap <silent>~ :noh<CR><Esc>

" vim surround
vmap s S


" " gvim settings:noh
" noremap! <silent>þ :noh<CR><Esc>
" noremap <silent>þ :noh<CR><Esc>
" tnoremap <silent>þ <Esc>

tnoremap <Esc> <C-\><C-n>
"tnoremap <C-k> <C-\><C-n>

" tnoremap <C-g> <C-\><C-n>

" " this line breaks the start up in Replace mode
" "noremap <silent><Esc> :noh<CR><C-[>
" " if you don't use <Esc> then it works
" noremap <silent><C-g> :noh<CR><Esc>
" "nnoremap <leader>/ :noh<CR><Esc>
"nnoremap <leader>/ :noh<CR><Esc>


" window
nnoremap <silent><leader><Esc> :noh<Esc>
nnoremap <leader><C-g> <Esc>
nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>
nnoremap <leader>w<Esc> <Esc>
nnoremap <leader>w<C-g> <Esc>
nnoremap <leader>wh :sp<CR>
" nnoremap <leader>wh :wincmd h<CR>
" nnoremap <leader>wj :wincmd j<CR>
" nnoremap <leader>wk :wincmd k<CR>
" nnoremap <leader>wl :wincmd l<CR>
nnoremap <leader>wc :wincmd c<CR>
nnoremap <leader>wo :wincmd c<CR>
nnoremap <leader>wv :wincmd v<CR>
nnoremap <leader>wi :wincmd i<CR>
nnoremap <leader>ws :wincmd s<CR>
nnoremap <leader>ww :wincmd w<CR>
nnoremap <leader>w\| :wincmd \|<CR>
nnoremap <leader>w_ :wincmd _<CR>
nnoremap <leader>w= :wincmd =<CR>
" nnoremap <leader>ff :Ex<CR>
nnoremap <leader>fp :e $MYVIMRC<CR>
nnoremap <leader>f<Esc> <Esc>
nnoremap <leader>f<C-g> <Esc>

" nnoremap <C-CR> o<Esc>0"_D




" scrolling
noremap <C-j> 20<C-d>
noremap <C-k> 20<C-u>

" noremap <C-J> 1<C-d>
" noremap <C-K> 1<C-u>

noremap J 10<C-d>
noremap K 10<C-u>

nnoremap <C-[>j :m .+1<CR>==
nnoremap <C-[>k :m .-2<CR>==
inoremap <C-[>j <Esc>:m .+1<CR>==gi
inoremap <C-[>k <Esc>:m .-2<CR>==gi
vnoremap <C-[>j :m '>+1<CR>gv=gv
vnoremap <C-[>k :m '<-2<CR>gv=gv


"new line in normal mode
"noremap <C-j> o<Esc>
"noremap <C-J> O<Esc>



" open
"nnoremap <leader>op :wincmd v<bar>:Ex<bar>:vertical resize 30<CR>
"nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>ow :wincmd c<CR>
nnoremap <leader>ou :UndotreeShow<CR>
"nnoremap <leader>ot :term<CR>
nnoremap <leader>oT :call ChooseTerm("term-pane", 0)<CR>
nnoremap <leader>ot :call ChooseTerm("term-pane", 1)<CR>
nnoremap <leader>o<Esc> <Esc>
nnoremap <leader>o<C-g> <Esc>


" Terminal toggle
function! ChooseTerm(termname, slider)
    let pane = bufwinnr(a:termname)
    let buf = bufexists(a:termname)
    if pane > 0
        " pane is visible
        if a:slider > 0
            :exe pane . "wincmd c"
        else
            :exe "e #"
        endif
    elseif buf > 0
        " buffer is not in pane
        if a:slider
            :exe "topleft split"
        endif
        :exe "buffer " . a:termname
    else
        " buffer is not loaded, create
        if a:slider
            :exe "topleft split"
        endif
        :terminal
        :exe "f " a:termname
    endif
endfunction

" airline
let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
let g:airline_section_c='%f'
" remove the filetype part
let g:airline_section_y=''
" let g:airline_section_z='%p%%%#__accent_bold#%{g:airline_symbols.linenr}%l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__#'
let g:airline_section_z='%#__accent_bold#%{g:airline_symbols.linenr}%l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__#'
let g:airline_section_warning=''
" remove separators for empty sections
let g:airline_skip_empty_sections = 1
" let airline#extensions#tabline#show_splits = 0

" set t_Co=256


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_left_sep = ''
let g:airline_left_sep = ''
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '▶'
" let g:airline_right_sep = ''
let g:airline_right_sep = ''
" let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.linenr = ' ␊:'
" let g:airline_symbols.linenr = ' ␤:'
" let g:airline_symbols.linenr = '¶'
let g:airline_symbols.linenr = ' '
let g:airline_symbols.maxlinenr = ' '
" let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
" let g:airline_symbols.colnr = ' :'
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ' :'
let g:airline_symbols.dirty='⚡'

let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tmuxline#left_sep= ' '
let g:airline#extensions#tmuxline#left_alt_sep = '|'
" let airline#extensions#tabline#tabs_label = ''
let airline#extensions#tabline#show_splits = 0

let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#enabled = 1
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '▶',
    \ 'right' : '',
    \ 'right_alt' : '◀',
    \ 'space' : ' '}

" set guifont=Inconsolata\ for\ Powerline:h16
let g:Powerline_symbols = 'fancy'



" nnoremap <leader>bk :bd<CR>
nnoremap <leader>bk :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <leader>BK :bp!<bar>sp!<bar>bn!<bar>bd!<CR>
" nnoremap <leader>BK :bd!<CR>
nnoremap <leader>bK :bd!<CR>
nnoremap <leader>bB :ls<CR>
nnoremap <leader>BB :ls<CR>
" nnoremap <leader>bb :ls<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
" nnoremap <leader>bo :bro ol<CR>
nnoremap <leader>fs :w<CR>
nnoremap <leader>fS :w<SPACE>
nnoremap <leader>FS :w<SPACE>
nnoremap <leader>F<Esc> <Esc>
nnoremap <leader>f<Esc> <Esc>
nnoremap <leader>F<C-g> <Esc>
nnoremap <leader>qh :sh<CR>
nnoremap <leader>qq :qa<CR>
nnoremap <leader>qQ :qa!<CR>
" nnoremap <leader>qQ :qa!<CR>
nnoremap <leader>QQ :qa!<CR>
" nnoremap <leader>QQ :qa!<CR>
nnoremap <leader>q<Esc> <Esc>
" nnoremap <leader>q<C-g> <Esc>
nnoremap <leader>Q<Esc> <Esc>
" nnoremap <leader>Q<C-g> <Esc>

" tab
nnoremap gh gT
nnoremap gl gt
nnoremap gn :tabe<CR>

" line end and home
noremap g- g_
noremap - g_
" noremap - _

" unmap g-
" brackets
"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
""inoremap {<CR> {<CR>}<Esc>O
"inoremap [ []<Esc>i
"inoremap < <><Esc>i
"inoremap ' ''<Esc>i

" copy paste
vnoremap c "+y
" noremap <C-c> "+y
nnoremap c "+yiw


" eval
nnoremap <leader>feR :source %<CR>
nnoremap <leader>fer :source %<CR>
nnoremap <leader>fee :e<CR>
nnoremap <leader>fe<Esc> <Esc>


inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
"




"global directory settings
nnoremap <F2> :cd %:p:h<CR>:pwd<CR>
nnoremap <F1> :pwd<CR>


"python settings
nnoremap <C-c><C-m> :w<CR>:cd %:p:h<CR>:!python %<CR>
nnoremap <C-c><C-c> :w<CR>:!conda activate math_env && python %<CR>
nnoremap <C-c><Esc> <Esc>
" vnoremap <C-c> "+y

" simple cpp compilation
" nnoremap <C-c><C-p> :w <CR> :!g++ *.cpp -o %< -I. && ./%< <CR>
" nnoremap <C-c><C-p> :w <CR> :!g++ *.cpp -o %< -I. && ./%<.exe <CR>
nnoremap <C-c><C-p> :w <CR> :!g++ *.cpp -o %< -I. && %<.exe <CR>


" GVim settings
"noremap <F5> :Termdebug<CR>
"noremap <F9> :Step<CR>
""noremap <C-F9> :Over<CR>
"noremap <F10> :Over<CR>
"noremap <F11> :Cont<CR>
"" noremap <F12> :Eval<CR>
""noremap <C-S-F9> :Cont<CR>
"noremap \ :Eval<CR>





" build and run c++
"map <F8> :w <CR> :!g++ *.cpp -o %< -I. && ./%< <CR>
"map <F8> :w <CR> :!gfortran % -o %< && ./%< <CR>


 
"" 日本語の切り替えIMEの切り替えはalt+iでCtrl+Spaceは使わないこと
" 問題点は長い変換をうまく行うことができない。短く区切って変換
inoremap <M-i> <C-^>
" noremap <M-i> <C-^>

" unmap ~
" noremap þ <Esc>þ
" noremap! þ <Esc>þ
" tnoremap þ <Esc>þ
" noremap þ :noh<Esc>þ

nnoremap <silent>þ :noh<Esc>þ
vnoremap <silent>þ <Esc>þ
noremap! þ <Esc>þ
tnoremap þ <Esc>þ
