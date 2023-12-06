
local ts = require('telescope'); 

ts.setup({
  defaults = {
    path_display = { "truncate" },
    prompt_prefix = "  ",
    selection_caret = " 󰇷 ",
    borderchars = { "─", "", "─", "", "󰋅", "󰋅", "󰋅", "󰋅" },
    results_title = "Keep Looking"
  }
})

ts.load_extension('harpoon'); 

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")})
end)



