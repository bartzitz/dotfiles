return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      { "<leader>b", group = "Buffers" },
      { "<leader>g", group = "Git" },
      { "<leader>s", group = "Search" },
      { "<leader>t", group = "Test" },
    },
  },
}
