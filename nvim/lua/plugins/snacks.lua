return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    picker = { enabled = true },
  },
  keys = {
    { "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
    { "<leader>sr", function() Snacks.picker.recent() end, desc = "Recent" },
    { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
    { "<leader>bb", function() Snacks.picker.buffers() end, desc = "List Buffers" },
    { "<leader>bd", function() Snacks.bufdelete() end, desc = "Delete Buffer" },
    { "<leader>gg", function () Snacks.lazygit() end, desc = "Lazygit" },
    { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
    { "gs", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
    { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
    { "<leader>sh", function() Snacks.picker.help() end, desc = "Help" },
    { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
  },
}
