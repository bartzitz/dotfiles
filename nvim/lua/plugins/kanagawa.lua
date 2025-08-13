return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      theme = "dragon",
      dimInactive = true,
    })

    vim.cmd("colorscheme kanagawa")
  end,
}
