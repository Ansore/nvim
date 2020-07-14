" enable tabline
"let g:airline#extensions#tabline#enabled = 0
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = '|'
""let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
"let airline#extensions#tabline#show_splits = 0
"let airline#extensions#tabline#tabs_label = ''

" Disable tabline close button
"let g:airline#extensions#tabline#show_close_button = 0
"let g:airline#extensions#tabline#show_tab_type = 0
"let g:airline#extensions#tabline#show_tab_nr = 0
"let g:airline#extensions#tabline#fnamecollapse = 1

"let g:airline#extensions#tabline#buffers_label = ''
"let g:airline#extensions#tabline#tabs_label = ''

" Just show the file name
"let g:airline#extensions#tabline#fnamemod = ':t'



" Switch to your current theme
" let g:airline_theme = 'onedark'

" Always show tabs
"set showtabline=2

" We don't need to see things like -- INSERT -- anymore
"set noshowmode

" Sections
let g:airline_section_a = airline#section#create(['mode'])
"let g:airline_section_a = airline#section#create(['mode', 'branch'])
"let g:airline_section_b = airline#section#create_left(['%f'])
" let g:airline_section_b = airline#section#create(['branch'])
"let g:airline_section_b = airline#section#create([''])
" let g:airline_section_b = 'Ansore'
"let g:airline_section_c = airline#section#create(['filetype'])
"let g:airline_skip_empty_sections = 1

"let g:webdevicons_enable_airline_tabline = 1

" enable powerline fonts
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#formatter = 'unique_tail'

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = 'Ɇ'
" let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
