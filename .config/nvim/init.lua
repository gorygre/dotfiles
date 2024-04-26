vim.cmd("let g:netrw_banner=0")
vim.cmd("let g:netrw_browse_split=4")
vim.cmd("let g:netrw_altv=1")
vim.cmd("let g:netrw_liststyle=3")
vim.cmd("let g:netrw_list_hide=netrw_gitignore#Hide()")
vim.cmd("let g:netrw_winsize=75")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
print(lazypath)
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
local options = {}

require("lazy").setup(plugins, options)

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
