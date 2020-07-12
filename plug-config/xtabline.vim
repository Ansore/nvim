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
