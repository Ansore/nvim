" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Always source these
" ===================== Start of Plugin Install =====================
" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"插件管理部分
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

Plug 'tiagofumo/dart-vim-flutter-layout'

" Vim plugin for automatically highlighting other uses of the current word under the cursor
Plug 'RRethy/vim-illuminate'

" Pretty Dress
" Plug 'vim-airline/vim-airline'
" Plug 'christianchiarulli/onedark.vim'
"Plug 'kaicataldo/material.vim'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'arcticicestudio/nord-vim'
" Plug 'ajmwagar/vim-deus'
Plug 'arzg/vim-colors-xcode'
Plug 'liuchengxu/eleline.vim'
" Plug 'theniceboy/eleline.vim'
Plug 'bling/vim-bufferline'

" Genreal Highlighter
Plug 'jaxbot/semantic-highlight.vim'

" File navigation
Plug 'junegunn/fzf.vim'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" Taglist
Plug 'liuchengxu/vista.vim'

" Debugger
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python'}

" Snippets
Plug 'honza/vim-snippets'

" Undo Tree
Plug 'mbbill/undotree'

" Coc Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" <leader>d create function document
" Plug 'kkoomen/vim-doge'

" Git
Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }

" Git integration
Plug 'mhinz/vim-signify'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-rhubarb'
" Plug 'junegunn/gv.vim'
" Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'jelera/vim-javascript-syntax', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Python
Plug 'tweekmonster/braceless.vim'

" Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
"Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] }
"Plug 'theniceboy/bullets.vim'

" Other filetypes
Plug 'jceb/vim-orgmode', {'for': ['vim-plug', 'org']}

" Editor Enhancement
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'

Plug 'tpope/vim-commentary' " comment
Plug 'unblevable/quick-scope' " f key enhance

"Plug 'scrooloose/nerdcommenter' " in <space>cn to comment a line

Plug 'AndrewRadev/switch.vim' " gs to switch
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'junegunn/vim-easy-align' " gaip= to align the = in paragraph,

"Plug 'easymotion/vim-easymotion'
" Plug 'junegunn/vim-after-object' " da= to delete what's after =


" 折叠
" Plug 'Konfekt/FastFold'
Plug 'tmhedberg/SimpylFold'

" Formatter
Plug 'Chiel92/vim-autoformat'

Plug 'MattesGroeger/vim-bookmarks'

" Find & Replace
Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }
" 查找时显示数
Plug 'osyo-manga/vim-anzu'

" Mini vim APP
Plug 'mhinz/vim-startify'

" Other visual enhancement
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
Plug 'mg979/vim-xtabline'
Plug 'wincent/terminus'

" Other useful utilities
Plug 'lambdalisue/suda.vim' " do stuff like :sudowrite

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'roxma/nvim-yarp'

" Initialize plugin system
call plug#end()
"插件结束部分

" Automatically install missing plugins on startup
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif
" ===================== End of Plugin Install =====================

" ===================== Start of Settings =====================
" ====================
" === Editor Setup ===
" ====================
" ===
" === System
" ===
"set clipboard=unnamedplus
let &t_ut=''
set autochdir

" ===
" === Editor behavior
" ===
set number
set relativenumber
set cursorline
set noexpandtab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
  set undofile
  set undodir=~/.config/nvim/tmp/undo,.
endif
" set colorcolumn=80
"set updatetime=1000
set virtualedit=block
"set cmdheight=2
set updatetime=300
set encoding=utf8

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p

set showmatch " 显示括号匹配

" 开启实时搜索
set incsearch
" 搜索时大小写不敏感
set ignorecase
syntax enable
syntax on                    " 开启文件类型侦测
filetype plugin indent on    " 启用自动补全

" Necessary Commands to Execute : clear search
exec "nohlsearch"

" Create a _machine_specific.vim file to adjust machine specific stuff, like python interpreter location
let has_machine_specific_file = 1
if empty(glob('~/.config/nvim/_machine_specific.vim'))
  let has_machine_specific_file = 0
  silent! exec "!cp ~/.config/nvim/default_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
endif
source ~/.config/nvim/_machine_specific.vim

" Open the _machine_specific.vim file if it has just been created
if has_machine_specific_file == 0
  exec "e ~/.config/nvim/_machine_specific.vim"
endif

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END
" ===================== End of Settings =====================


" ===================== Start of Mappings =====================
" ===
" === Basic Mappings
" ===
" Set <LEADER> as <SPACE>, ; as :
let mapleader=" "
" noremap ; :

" Save & quit
noremap Q :q<CR>
noremap <C-q> :qa<CR>
noremap S :w<CR>

" Open the vimrc file anytime
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Search
noremap <LEADER><CR> :nohlsearch<CR>

" Adjacent duplicate words
" noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
nnoremap <LEADER>tt :%s/    /\t/g
vnoremap <LEADER>tt :s/    /\t/g

" Folding
noremap <sIlent> <LEADER>o za


" Open up lazygit
noremap \g :term lazygit<CR>
noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>

" Open up pudb
" noremap <c-d> :tab sp<CR>:term python3 -m pudb %<CR>
noremap <f12> :tab sp<CR>:term python3 -m pudb %<CR>

" ===
" === Cursor Movement
" ===
" New cursor movement (the default arrow keys are used for resizing windows)
" J/K keys for 5 times j/k (faster) navigation
noremap <silent> J 5j
noremap <silent> K 5k

" N key: go to the start of the line
noremap <silent> N 0
" I key: go to the end of the line
noremap <silent> I ^i

" Faster in-line navigation
noremap W 5w
noremap B 5b


" ===
" === Insert Mode Cursor Movement
" ===name
inoremap <C-a> <ESC>A

" ===
" === Command Mode Cursor Movement
" ===
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left><++>
cnoremap <M-w> <S-Right>

" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
" noremap <LEADER>w <C-w>w
" noremap <LEADER>k <C-w>k
" noremap <LEADER>j <C-w>j
" noremap <LEADER>h <C-w>h
" noremap <LEADER>l <C-w>l
noremap <M-w> <C-w>w
noremap <M-k> <C-w>k
noremap <M-j> <C-w>j
noremap <M-h> <C-w>h
noremap <M-l> <C-w>l

" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sj :set splitbelow<CR>:split<CR>
noremap sn :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>

" Use alt + hjkl to resize windows
nnoremap <silent> <M-Up>    :resize -2<CR>
nnoremap <silent> <M-Down>    :resize +2<CR>
nnoremap <silent> <M-Left>    :vertical resize -2<CR>
nnoremap <silent> <M-Right>    :vertical resize +2<CR>
" nnoremap <silent> <M-j>    :resize -2<CR>
" nnoremap <silent> <M-k>    :resize +2<CR>
" nnoremap <silent> <M-h>    :vertical resize -2<CR>
" nnoremap <silent> <M-l>    :vertical resize +2<CR>

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>

" ===
" === Tab management
" ===
" Create a new tab with tu
noremap tn :tabe<CR>
" Move around tabs with th and tl
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>
" Move the tabs with tmh and tml
noremap tmh :-tabmove<CR>
noremap tml :+tabmove<CR>

" ===
" === Other useful stuff
" ===
" Open a new instance of st with the cwd
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" Move the next character to the end of the line with ctrl+9
" inoremap <C-u> <ESC>lx$p

" Opening a terminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Press ` to change case (instead of ~)
noremap ` ~

noremap <C-c> zz

" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h

" Call figlet
noremap tx :r !figlet

noremap <LEADER>- :lN<CR>
noremap <LEADER>= :lne<CR>

" find and replace
noremap \s :%s//g<left><left>

" Compile function
noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!gcc % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    set splitbelow
    "exec \"!g++ -std=c++11 % -Wall -o %<"
    ":sp
    ":res -15
    ":term ./%<
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    set splitbelow
    :sp
    :term python3 %
  elseif &filetype == 'html'
    silent! exec "!".g:mkdp_browser." % &"
  elseif &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'tex'
    silent! exec "VimtexStop"
    silent! exec "VimtexCompile"
    "elseif &filetype == 'dart'
    "CocCommand flutter.run
  elseif &filetype == 'go'
    set splitbelow
    :sp
    :term go run %
  endif
endfunc
" ===================== End of Mappings =====================

" ===================== Start of Theme =====================

" ===
" === Onedark
" ===

" hi Comment cterm=italic
" let g:onedark_hide_endofbuffer=1
" let g:onedark_terminal_italics=1
" let g:onedark_termcolors=256

" syntax on
" colorscheme onedark

" checks if your terminal has 24-bit color support
" if (has("termguicolors"))
"     set termguicolors
"     hi LineNr ctermbg=NONE guibg=NONE
" endif

" ===
" === Airline
" ===

" Sections
" let g:airline_section_a = airline#section#create(['mode'])
" let g:airline_section_b = airline#section#create(['branch'])

" enable powerline fonts
" let g:airline_powerline_fonts = 1

" let g:airline#extensions#tabline#formatter = 'unique_tail'

" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif

" powerline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.maxlinenr = ''
"

" ===
" === Dress up my vim
" ===

" --------
"Credit joshdick
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
" set termguicolors " enable true colors support
" colorscheme xcodedark
" colorscheme xcodedarkhc
" colorscheme xcodelight
colorscheme xcodelighthc
" colorscheme xcodewwdc

" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" set background=dark
" colorscheme deus

" let g:deus_termcolors=256
" hi NonText ctermfg=gray guifg=grey10

" ===
" === eleline.vim
" ===
let g:eleline_powerline_fonts = 1

" ===================== End of Theme =====================

" ===================== Start of Plugin Config =====================

" ===
" === Anzu
" ===
set statusline=%{anzu#search_status()}
nnoremap = n
nnoremap - N

" ===
" === AutoFormat
" ===
nnoremap \f :Autoformat<CR>
"let g:autoformat_verbosemode=1
let g:formatter_yapf_style = 'pep8'
let g:formatdef_allman = '"astyle --style=allman --pad-oper"'
let g:formatters_cpp = ['allman']
let g:formatters_c = ['allman']
"let g:autoformat_autoindent = 0

" ===
" === vim-python-pep8-indent
" ===
"let g:python_pep8_indent_hang_closing = 1

" ===
" === vim-bookmarks
" ===
let g:bookmark_no_default_key_mappings = 1
nmap mt <Plug>BookmarkToggle
nmap ma <Plug>BookmarkAnnotate
nmap ml <Plug>BookmarkShowAll
nmap mi <Plug>BookmarkNext
nmap mn <Plug>BookmarkPrev
nmap mC <Plug>BookmarkClear
nmap mX <Plug>BookmarkClearAll
nmap mu <Plug>BookmarkMoveUp
nmap me <Plug>BookmarkMoveDown
nmap <Leader>g <Plug>BookmarkMoveToLine
let g:bookmark_save_per_working_dir = 1
let g:bookmark_auto_save = 1
let g:bookmark_highlight_lines = 1
let g:bookmark_manage_per_buffer = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_center = 1
let g:bookmark_auto_close = 1
let g:bookmark_location_list = 1

" ===
" === coc
" ===

" TextEdit might fail if hidden is not set.
set hidden

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" fix the most annoying bug that coc has
"silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
let g:coc_global_extensions = ['coc-actions', 'coc-python', 'coc-vimlsp', 'coc-snippets', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-tailwindcss', 'coc-stylelint', 'coc-tslint', 'coc-emmet', 'coc-git', 'coc-explorer', 'coc-pyright', 'coc-sourcekit', 'coc-translator', 'coc-flutter-tools', 'coc-java']

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use <c-o> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-o> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Close the preview window when completion is done.
" autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>= <Plug>(coc-diagnostic-next)

" Useful commands
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" " Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac  <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
nmap <leader>fx  <Plug>(coc-fix-current)

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>l  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" nmap tt :CocCommand explorer<CR>
nmap e :CocCommand explorer<CR>
" coc-translator
nmap ts <Plug>(coc-translator-p)

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

let g:snippet_author = 'Ansore'

" ===
" === Far.vim
"" ===
noremap <LEADER>m :F  **/*<left><left><left><left><left>
let g:far#mapping = {
      \ "replace_undo" : ["u"],
      \ }

" ===
" === fzf-gitignore
" ===
noremap <LEADER>gi :FzfGitignore<CR>

" ===
" === FZF
" ===
set rtp+=/usr/local/opt/fzf
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
noremap <C-p> :FZF<CR>
noremap <C-f> :Ag<CR>
noremap <C-h> :MRU<CR>
noremap <C-t> :BTags<CR>
noremap <C-l> :LinesWithPreview<CR>
noremap <C-w> :Buffers<CR>
"noremap ; :History:<CR>

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noruler
      \| autocmd BufLeave <buffer> set laststatus=2 ruler

command! -bang -nargs=* Buffers
      \ call fzf#vim#buffers(
      \   '',
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:0%', '?'),
      \   <bang>0)


command! -bang -nargs=* LinesWithPreview
      \ call fzf#vim#grep(
      \   'rg --with-filename --column --line-number --no-heading --color=always --smart-case . '.fnameescape(expand('%')), 1,
      \   fzf#vim#with_preview({}, 'up:50%', '?'),
      \   1)

command! -bang -nargs=* Ag
      \ call fzf#vim#ag(
      \   '',
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%', '?'),
      \   <bang>0)


command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())

command! -bang BTags
      \ call fzf#vim#buffer_tags('', {
      \     'down': '40%',
      \     'options': '--with-nth 1
      \                 --reverse
      \                 --prompt "> "
      \                 --preview-window="70%"
      \                 --preview "
      \                     tail -n +\$(echo {3} | tr -d \";\\\"\") {2} |
      \                     head -n 16"'
      \ })

" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
      \ 'mkit': {},
      \ 'katex': {},
      \ 'uml': {},
      \ 'maid': {},
      \ 'disable_sync_scroll': 0,
      \ 'sync_scroll_type': 'middle',
      \ 'hide_yaml_meta': 1
      \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" ===
" === QuickScope
" ===
" Trigger a highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']

augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END

let g:qs_max_chars=150

" ===
" === rainbow
" ===
let g:rainbow_active = 1

" ===
" === rnvimr
" ===
" let g:rnvimr_ex_enable = 1
" let g:rnvimr_pick_enable = 1
" nnoremap <silent> R :RnvimrSync<CR>:RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
" let g:rnvimr_presets = [{'width': 1.0, 'height': 1.0}]
let g:rnvimr_ex_enable = 1
let g:rnvimr_pick_enable = 1
let g:rnvimr_draw_border = 0
" let g:rnvimr_bw_enable = 1
let g:rnvimr_vanilla = 1
highlight link RnvimrNormal CursorLine
nnoremap <silent> R :RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
let g:rnvimr_action = {
      \ '<C-t>': 'NvimEdit tabedit',
      \ '<C-x>': 'NvimEdit split',
      \ '<C-v>': 'NvimEdit vsplit',
      \ 'gw': 'JumpNvimCwd',
      \ 'yw': 'EmitRangerCwd'
      \ }
let g:rnvimr_layout = { 'relative': 'editor',
      \ 'width': &columns,
      \ 'height': &lines,
      \ 'col': 0,
      \ 'row': 0,
      \ 'style': 'minimal' }
let g:rnvimr_presets = [{'width': 1.0, 'height': 1.0}]


" ===
" === signify
" ===
" Change these if you want
" let g:signify_sign_add               = '+'
" let g:signify_sign_delete            = '_'
" let g:signify_sign_delete_first_line = '‾'
" let g:signify_sign_change            = '~'

" " I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
" nmap <leader>gJ 9999<leader>gJ
" nmap <leader>gK 9999<leader>gk

" If you like colors instead
" highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
" highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
" highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00

let g:signify_sign_add    = '┃'
let g:signify_sign_change = '┃'
let g:signify_sign_delete = '•'

let g:signify_sign_show_count = 0 " Don’t show the number of deleted lines.

" ==
" == GitGutter
" ==
" let g:gitgutter_signs = 0
" let g:gitgutter_sign_allow_clobber = 0
" let g:gitgutter_map_keys = 0
" let g:gitgutter_override_sign_column_highlight = 0
" let g:gitgutter_preview_win_floating = 1
" let g:gitgutter_sign_added = '▎'
" let g:gitgutter_sign_modified = '░'
" let g:gitgutter_sign_removed = '▏'
" let g:gitgutter_sign_removed_first_line = '▔'
" let g:gitgutter_sign_modified_removed = '▒'
" " autocmd BufWritePost * GitGutter
" nnoremap <LEADER>gf :GitGutterFold<CR>
" nnoremap H :GitGutterPreviewHunk<CR>
" nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
" nnoremap <LEADER>g= :GitGutterNextHunk<CR>

" ===
" === Agit
" ===
nnoremap <LEADER>gl :Agit<CR>
let g:agit_no_default_mappings = 1


" ===
" === suda.vim
" ===
cnoreabbrev sudowrite w suda://%
cnoreabbrev sw w suda://%

" ===
" === Undotree
" ===
noremap U :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
  nmap <buffer> k <plug>UndotreeNextState
  nmap <buffer> j <plug>UndotreePreviousState
  nmap <buffer> K 5<plug>UndotreeNextState
  nmap <buffer> J 5<plug>UndotreePreviousState
endfunc

" ===
" === vim-commentary
" ===
nnoremap <leader>/ :Commentary<CR>
vnoremap <leader>/ :Commentary<CR>

" ===
" === vim-easy-align
" ===
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" ===
" === vim-go
" ===
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enabled = 0

" ===
" === vim-illuminate
" ===
let g:Illuminate_delay = 750
hi illuminatedWord cterm=undercurl gui=undercurl

let g:dart_style_guide = 2
let g:dart_format_on_save = 1
let dart_html_in_string=v:true

" ===
" === vim-table-mode
" ===
noremap <LEADER>tm :TableModeToggle<CR>
"let g:table_mode_disable_mappings = 1
let g:table_mode_cell_text_object_i_map = 'k<Bar>'

" ===
" === vim-visual-multi
" ===

" let g:VM_leader                     = {'default': ',', 'visual': ',', 'buffer': ','}
" let g:VM_leader = ','
" let g:VM_maps['Motion ,'] = ',,'
let g:VM_maps                         = {}
let g:VM_maps["Undo"]                 = 'u'
let g:VM_maps["Redo"]                 = '<C-r>'

let g:VM_maps['Find Under']           = '<C-n>'
let g:VM_maps['Find Subword Under']   = '<C-n>'
let g:VM_maps["Select All"]           = '\\A'
let g:VM_maps["Start Regex Search"]   = '\\/'
let g:VM_maps["Add Cursor Down"]      = '<C-Down>'
let g:VM_maps["Add Cursor Up"]        = '<C-Up>'
let g:VM_maps["Add Cursor At Pos"]    = '\\\'

let g:VM_maps["Visual Regex"]         = '\\/'
let g:VM_maps["Visual All"]           = '\\A'
let g:VM_maps["Visual Add"]           = '\\a'
let g:VM_maps["Visual Find"]          = '\\f'
let g:VM_maps["Visual Cursors"]       = '\\c'

let g:VM_maps["Select Cursor Down"]   = '<M-C-Down>'
let g:VM_maps["Select Cursor Up"]     = '<M-C-Up>'

let g:VM_maps["Erase Regions"]        = '\\gr'

let g:VM_maps["Mouse Cursor"]         = '<C-LeftMouse>'
let g:VM_maps["Mouse Word"]           = '<C-RightMouse>'
let g:VM_maps["Mouse Column"]         = '<M-C-RightMouse>'

let g:VM_maps["Switch Mode"]          = '<Tab>'

let g:VM_maps["Find Next"]            = ']'
let g:VM_maps["Find Prev"]            = '['
let g:VM_maps["Goto Next"]            = '}'
let g:VM_maps["Goto Prev"]            = '{'
let g:VM_maps["Seek Next"]            = '<C-f>'
let g:VM_maps["Seek Prev"]            = '<C-b>'
let g:VM_maps["Skip Region"]          = 'q'
let g:VM_maps["Remove Region"]        = 'Q'
let g:VM_maps["Invert Direction"]     = 'o'
let g:VM_maps["Find Operator"]        = "m"
let g:VM_maps["Surround"]             = 'S'
let g:VM_maps["Replace Pattern"]      = 'R'

let g:VM_maps["Tools Menu"]           = '\\`'
let g:VM_maps["Show Registers"]       = '\\"'
let g:VM_maps["Case Setting"]         = '\\c'
let g:VM_maps["Toggle Whole Word"]    = '\\w'
let g:VM_maps["Transpose"]            = '\\t'
let g:VM_maps["Align"]                = '\\a'
let g:VM_maps["Duplicate"]            = '\\d'
let g:VM_maps["Rewrite Last Search"]  = '\\r'
let g:VM_maps["Merge Regions"]        = '\\m'
let g:VM_maps["Split Regions"]        = '\\s'
let g:VM_maps["Remove Last Region"]   = '\\q'
let g:VM_maps["Visual Subtract"]      = '\\s'
let g:VM_maps["Case Conversion Menu"] = '\\C'
let g:VM_maps["Search Menu"]          = '\\S'

let g:VM_maps["Run Normal"]           = '\\z'
let g:VM_maps["Run Last Normal"]      = '\\Z'
let g:VM_maps["Run Visual"]           = '\\v'
let g:VM_maps["Run Last Visual"]      = '\\V'
let g:VM_maps["Run Ex"]               = '\\x'
let g:VM_maps["Run Last Ex"]          = '\\X'
let g:VM_maps["Run Macro"]            = '\\@'
let g:VM_maps["Align Char"]           = '\\<'
let g:VM_maps["Align Regex"]          = '\\>'
let g:VM_maps["Numbers"]              = '\\n'
let g:VM_maps["Numbers Append"]       = '\\N'
let g:VM_maps["Zero Numbers"]         = '\\0n'
let g:VM_maps["Zero Numbers Append"]  = '\\0N'
let g:VM_maps["Shrink"]               = "\\-"
let g:VM_maps["Enlarge"]              = "\\+"

let g:VM_maps["Toggle Block"]         = '\\<BS>'
let g:VM_maps["Toggle Single Region"] = '\\<CR>'
let g:VM_maps["Toggle Multiline"]     = '\\M'

" ===
" === vimspector
" ===
let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
  " has to be a function to avoid the extra space fzf#run insers otherwise
  execute '0r ~/.config/nvim/sample_vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
      \   'source': 'ls -1 ~/.config/nvim/sample_vimspector_json',
      \   'down': 20,
      \   'sink': function('<sid>read_template_into_buffer')
      \ })
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
sign define vimspectorBP text=☛ texthl=Normal
sign define vimspectorBPDisabled text=☞ texthl=Normal
sign define vimspectorPC text=🔶 texthl=SpellBad

" ===
" === Vista.vim
" ===
noremap <silent> T :Vista!!<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
      \   "function": "\uf794",
      \   "variable": "\uf71b",
      \  }
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" ===
" === xtabline
" ===
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1
noremap to :XTabCycleMode<CR>
noremap \p :XTabInfo<CR>
" powerline fonts
let g:xtabline_settings.indicators = {
      \ 'modified': '[+]',
      \ 'pinned': '[📌]',
      \}

let g:xtabline_settings.icons = {
      \'pin': '📌',
      \'star': '★',
      \'book': '📖',
      \'lock': '🔒',
      \'hammer': '🔨',
      \'tick': '✔',
      \'cross': '✖',
      \'warning': '⚠',
      \'menu': '☰',
      \'apple': '🍎',
      \'linux': '🐧',
      \'windows': '⌘',
      \'git': '',
      \'palette': '🎨',
      \'lens': '🔍',
      \'flag': '🏁',
      \}

" ===
" === vim-doge
" ===
" let g:doge_mapping_comment_jump_forward = '<C-j>'
" let g:doge_mapping_comment_jump_backward = '<C-k>'

let g:ruby_host_prog = '/usr/bin/ruby'

" ===================== End of Plugin Config =====================
