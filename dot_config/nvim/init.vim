call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'dense-analysis/ale'
Plug 'folke/tokyonight.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'airblade/vim-gitgutter'
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

set number
set cursorline

set shiftwidth=2
set softtabstop=2
set expandtab

set scrolloff=4
set virtualedit=onemore

set ignorecase
set smartcase

set title
set vb

set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif
set backupskip=/tmp/*
