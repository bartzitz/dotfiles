-- local g = vim.g

-- g["test#ruby#rspec#executable"] = "bundle exec rspec --tag focus"

return {
  "vim-test/vim-test",
  opts = function(_, opts)
    print(vim.inspect(opts))
    print(vim.inspect(vim.g))
  end,
  config = function()
  end,
}
