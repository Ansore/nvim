" ===
" === vim-visual-multi
" ===
"let g:VM_theme             = 'iceblue'
"let g:VM_default_mappings = 0
let g:VM_leader = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps = {}
" let g:VM_custom_motions  = {'n': 'h', 'i': 'l', 'u': 'k', 'e': 'j', 'N': '0', 'I': '$', 'h': 'e'}
" let g:VM_maps['i']         = 'k'
" let g:VM_maps['I']         = 'K'
let g:VM_maps['Find Under']         = '<C-n>'
let g:VM_maps['Find Subword Under'] = '<C-n>'
let g:VM_maps['Find Next']         = ''
let g:VM_maps['Find Prev']         = ''
let g:VM_maps['Remove Region'] = 'q'
let g:VM_maps['Skip Region'] = ''
let g:VM_maps["Undo"]      = 'u'
let g:VM_maps["Redo"]      = '<C-r>'