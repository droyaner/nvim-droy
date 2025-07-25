-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- my plugins
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {"ibhagwan/fzf-lua", dependencies = { "nvim-tree/nvim-web-devicons" },opts = {}},
    {'stevearc/oil.nvim', opts = {}, dependencies = { { "echasnovski/mini.icons", opts = {} } }, lazy = false,},
    {"nvim-tree/nvim-tree.lua", version = "*", lazy = false, dependencies = {"nvim-tree/nvim-web-devicons"},
       config = function()
       require("nvim-tree").setup {}
       end,
    },
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
