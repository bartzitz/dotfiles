return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        ruby = { lsp_format = "fallback" },
        javascript = { "biome" },
        typescript = { "biome" },
      },
    })
  end,
}
