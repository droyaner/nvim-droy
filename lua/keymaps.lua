vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- terminal
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
vim.keymap.set("n", "<leader>t", ":terminal<cr>")

-- relativ path to clipboard
vim.keymap.set("n", "<leader>r", ":let @+ = expand('%')<cr>")
vim.keymap.set("n", "<leader>a", ":let @+ = expand('%:p')<cr>")

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- yank to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

