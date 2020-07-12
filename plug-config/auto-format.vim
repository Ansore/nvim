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
