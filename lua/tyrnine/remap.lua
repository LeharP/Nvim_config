-- together move
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- best paste remap
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>")

-- tab space to 2
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "
vim.g.maplocalleader = "//"

vim.keymap.set("n", "<leader>jj", ":Ex<CR>")
vim.keymap.set('i', "jj", "<Esc>")
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

vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.updatetime = 50

-- -- undo tree settings
-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undo = os.getenv("HOME").."/.vim/undodir"
-- vim.opt.undofile = true

-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- lsp saga 
-- to show errors in line
vim.keymap.set('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>', {})
-- to toggle terminal 
vim.keymap.set('n', '<A-k>', ':Lspsaga term_toggle<CR>',{})
--to open outline
vim.keymap.set('n', '<A-o>', ':Lspsaga outline<CR>',{})

vim.diagnostic.config({
    virtual_text = false,
})

