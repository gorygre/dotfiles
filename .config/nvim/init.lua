require("vim-options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
print(lazypath)
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
