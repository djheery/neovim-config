local group = vim.api.nvim_create_augroup("Markup Language Wrap Settings", { clear = true })

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*.md", "*.txt", "*.html" },
	group = group,
	callback = function()
		vim.wo.wrap = true
    vim.wo.linebreak = true
	end,
})

vim.api.nvim_create_autocmd("BufLeave", {
	pattern = "*",
	group = group,
	callback = function()
		vim.wo.wrap = false
	end,
})
