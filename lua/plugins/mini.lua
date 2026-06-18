return {
	{
		'nvim-mini/mini.indentscope',
		version = '*',
		opts = {
			symbol = "│",
			options = { try_as_border = true },
			draw = {
				delay = 0,
				animation = function () return 0 end
			}
		},
	},
	{
		'nvim-mini/mini.pairs',
		version = '*',
	},
}
