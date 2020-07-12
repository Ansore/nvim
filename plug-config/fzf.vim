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

"" ===
"" === fzf-preview.vim
"" ===
"noremap <C-w> :BuffersPreview<CR>
"let g:fzf_preview_default_key_bindings = 'ctrl-e:down,ctrl-u:up'
"let g:fzf_preview_layout = 'belowright split new'
"let g:fzf_preview_rate = 0.4
"let g:fzf_full_preview_toggle_key = '<C-f>'
"let g:fzf_preview_command = 'ccat --color=always {-1}'
"let g:fzf_binary_preview_command = 'echo "It is a binary file"'
