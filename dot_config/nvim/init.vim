call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'dense-analysis/ale'
Plug 'folke/tokyonight.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

lua << EOF
require('tokyonight').setup({
	style = "night",
	transparent = true,
})
EOF

lua << EOF
require('lualine').setup({
	options = {
		theme = 'tokyonight',
		icons_enabled = false,
		section_separators = '',
		component_separators = '',
	},
})
EOF

colorscheme tokyonight

lua << EOF
require('nvim-treesitter.configs').setup({
	auto_install = true,
})
EOF
