local ls = require("luasnip"); 

require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/after/snippets/"})

ls.config.set_config({
  history = true,
  updateevents = "TextChanged, TextChangedI", 
  enable_autosnippets = true, 
  ext_opts = {
    [require("luasnip.util.types").choiceNode] = {
      active = {
        virt_text = { { "@", "rose-pine" } }
      }
    }
  }
})

-- Key Maps

vim.keymap.set({ "i", "s" }, "<C-p>", function()
  if ls.expand_or_jumpable() then 
      ls.expand()
   end
end)

vim.keymap.set({ "i", "s" }, "<C-k>", function()
  if ls.jumpable(1) then 
    ls.jump(1)
  end
end)

vim.keymap.set({ "i", "s" }, "<C-j>", function()
  if ls.jumpable(-1) then 
    ls.jump(-1)
  end
end)

ls.filetype_extend("javascriptreact", { 
  "javascript", 
  "js_comments", 
  "javascriptreact"
})

ls.filetype_extend("javascript", {
  "js_comments",
  "javascript" 
})

ls.filetype_extend("typescript", {
  "js_comments",
  "javascript",
  "typescript" 
})

ls.filetype_extend("typescriptreact", {
  "js_comments",
  "javascript",
  "typescript",
  "javascriptreact",
  "typescriptreact" 
})
