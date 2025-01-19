return {
  'hiphish/rainbow-delimiters.nvim',
  enabled = true,
  config = function()
    vim.g.rainbow_delimiters = {
      blacklist = {
        'zig',
      },
    }
  end,
}
