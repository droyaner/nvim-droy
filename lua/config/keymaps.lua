-- fzf lua
vim.keymap.set("n", "<leader>fs", ":FzfLua files<cr>")
vim.keymap.set("n", "<leader>fz", ":FzfLua live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":FzfLua oldfiles<cr>")
vim.keymap.set("n", "<leader>fw", ":FzfLua grep_cword<cr>")

-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
