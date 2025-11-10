return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	branch = 'main',
	build = ':TSUpdate',
	config = function()
		require('nvim-treesitter').install({
			'rust',
			'javascript',
			'typescript',
			'python',
			'astro',
			'elixir'
		})
	end
}
