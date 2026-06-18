return {
  	'nvim-treesitter/nvim-treesitter',
  	dependencies = { 'neovim-treesitter/treesitter-parser-registry' },
  	lazy = false,
  	build = ':TSUpdate',
	opts = {
		auto_install = true,
		sync_install = false,
	},
}
