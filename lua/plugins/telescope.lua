return {
	'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{ '<leader>f', function() require('telescope.builtin').find_files() end, desc = 'Find files' },
		{ '<leader>/', function() require('telescope.builtin').live_grep() end, desc = 'Find files' },
	}
}
