
-- Make line numbers default
vim.o.number = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- A TAB character looks like 4 spaces
--vim.o.tabstop = 4 

-- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.expandtab = true

-- Number of spaces inserted instead of a TAB character
vim.o.softtabstop = 4

-- Number of spaces inserted when indenting
vim.o.shiftwidth = 4

-- Show spaces
vim.opt.list = true

-- Darstellung der Zeichen konfigurieren
vim.opt.listchars = {
  space = "·",
  tab = "▸ ",
  trail = "·",
  extends = ">",
  precedes = "<",
  nbsp = "␣"
}
