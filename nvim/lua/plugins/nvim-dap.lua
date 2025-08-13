return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "suketa/nvim-dap-ruby",
  },
  config = function()
    require("dapui").setup()
    require("dap-ruby").setup()
  end,
}
