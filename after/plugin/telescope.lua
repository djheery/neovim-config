
local ts = require('telescope'); 

ts.setup({
  defaults = {
    path_display = { "truncate" },
    prompt_prefix = "  ",
    selection_caret = " 󰇷 ",
    borderchars = { "─", "", "─", "", "󰋅", "󰋅", "󰋅", "󰋅" },
    results_title = "Keep Looking",
    file_ignore_patterns = { "node_modules", "target" }
  }
})


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")})
end)



