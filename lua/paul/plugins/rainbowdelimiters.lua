return {
  'hiphish/rainbow-delimiters.nvim',
  config = function()
    vim.g.rainbow_delimiters = {
      blacklist = {
        'zig',
      },
    }
  end,
}
