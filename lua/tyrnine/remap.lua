-- tab space to 2
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "
vim.g.maplocalleader = "//"

vim.keymap.set('i', "jj", "<Esc>")
vim.keymap.set("n", "<leader>jj", ":Ex<CR>")
-- vim.keymap.set("x", "<C-_>", "gc")

-- clipboard settings
vim.opt.clipboard:append("unnamedplus")
vim.keymap.set("x", "<C-c>", '"+y', { noremap = true, silent = true })

-- moving panes keybind
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")

-- relative line numbers
vim.wo.relativenumber = true
