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
" - For Neovim: ~/.local/share/nvim/autoload/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'tiagofumo/dart-vim-flutter-layout'

" Vim plugin for automatically highlighting other uses of the current word under the cursor
Plug 'RRethy/vim-illuminate'

" Pretty Dress
"Plug 'theniceboy/eleline.vim'
Plug 'vim-airline/vim-airline'
Plug 'christianchiarulli/onedark.vim'
"Plug 'kaicataldo/material.vim'
"Plug 'bling/vim-bufferline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'ajmwagar/vim-deus'
"Plug 'arcticicestudio/nord-vim'

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
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Undo Tree
Plug 'mbbill/undotree'

" Coc Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git
Plug 'fszymanski/fzf-gitignore', { 'do': ':UpdateRemotePlugins' }

" Git integration
Plug 'mhinz/vim-signify'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-rhubarb'
" Plug 'junegunn/gv.vim'

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
