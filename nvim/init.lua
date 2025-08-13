-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.options")
require("config.lazy")
require("config.keymap")
require("config.autocommands")

vim.lsp.enable({ "lua-language-server", "ruby-lsp" })

vim.diagnostic.config({
  virtual_lines = true
})

