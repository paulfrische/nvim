return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',

  config = function()
    local ts = require('nvim-treesitter')
    ts.install({ 'lua', 'c', 'vim', 'vimdoc', 'query' })

    vim.api.nvim_create_autocmd('FileType', {
      pattern = { '<filetype>' },
      callback = function()
        ts.install()
        vim.treesitter.start()

        vim.bo.indentexpr = 'v:lua.require\'nvim-treesitter\'.indentexpr()' -- ts indenting. may suck
      end,
    })
  end,
}
