-- To Get me started all remamps are from the primeagen keymaps
-- https://github.com/ThePrimeagen/init.lua/tree/master/lua/theprimeagen
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Overides the cut and paste default 

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"*y")
vim.keymap.set("v", "<leader>y", "\"*y")
vim.keymap.set("n", "<leader>Y", "\"*y")

-- More Void Register deletion manipulation
vim.keymap.set("n", "<leader>d", "\"_d");
vim.keymap.set("v", "<leader>d", "\"_d");
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.api.nvim_set_option("clipboard", "unnamedplus")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Changes the type of Ctrl-c to escape in insert mode 
-- Useful for the AutoSave plugin I have running 
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>_d", [[:%s/\<<C-r><C-w>\>/ /gI<Left><Left><Left>]]);

-- Exit insertion Remmap
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "ddd", "<Esc>dd"); 

