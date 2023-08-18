local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local getDynamicWidth = function()
  local screenWidth = vim.api.nvim_win_get_width(0); 
  if screenWidth < 150 then 
    return screenWidth - 20
  else 
    return 80
  end
end

require('harpoon').setup {
  menu = {
      width = getDynamicWidth() 
    }
}
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

