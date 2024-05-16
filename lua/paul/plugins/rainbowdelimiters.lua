return {
  'hiphish/rainbow-delimiters.nvim',
  enabled = false,
  config = function()
    vim.g.rainbow_delimiters = {
      blacklist = {
        'zig',
      },
    }
  end,
}
