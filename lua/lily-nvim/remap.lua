vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pf", vim.cmd.Ex)

-- move selected text up and down with N and E
vim.keymap.set("v", "N", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "E", ":m '>+1<CR>gv=gv")

-- append to same line with J
vim.keymap.set("n", "J", "mzJ`z")

-- keeps search term in the middle of the page
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without overriding buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- allows to copy (yank) to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to void register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- replaces current word on the entire file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- makes current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
