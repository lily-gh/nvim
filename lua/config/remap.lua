vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.relativenumber = true

-- makes current file executable
vim.keymap.set("n", "<leader>x", ":silent !chmod +x % >/dev/null 2>&1<CR>:lua print('File is now executable.')<CR>", { noremap = true, silent = true })

-- append line below to current line with J
vim.keymap.set("n", "J", "mzJ`z")

-- keeps search term in the middle of the page
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keep cursor centered when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- allows to copy (yank) to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set( { "n", "x" }, "<leader>p", '"+p', { desc = "Paste clipboard after" })
vim.keymap.set( { "n", "x" }, "<leader>P", '"+P', { desc = "Paste clipboard before" })

-- Delete text without yanking
vim.keymap.set({ "n", "x" }, "x", '"_x')
vim.keymap.set({ "n", "x" }, "X", '"_d')

-- move selected text up and down with N and E
vim.keymap.set("v", "N", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "E", ":m '>+1<CR>gv=gv")

-- Move the current line in normal mode
vim.keymap.set("n", "<leader><up>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<leader><down>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<leader>n", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<leader>e", ":m .+1<CR>==", { desc = "Move line down" })

-- replaces current word on the entire file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Buffer navigation
vim.keymap.set("n", "<C-[>", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<C-]>", ":bnext<CR>", { desc = "Next buffer" })


