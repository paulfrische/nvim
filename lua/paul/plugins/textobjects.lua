return {
  'nvim-treesitter/nvim-treesitter-textobjects',

  branch = 'main',

  config = function()
    require('nvim-treesitter-textobjects').setup({})

    local tom = function(m, q, d)
      vim.keymap.set({ 'x', 'o' }, m, function()
        require('nvim-treesitter-textobjects.select').select_textobject(q, 'textobjects')
      end, { desc = d })
    end

    tom('af', '@function.outer', 'select function [outer]')
    tom('if', '@function.inner', 'select function [inner]')

    tom('ac', '@class.outer', 'select class [outer]')
    tom('ic', '@class.inner', 'select class [inner]')

    tom('al', '@loop.outer', 'select loop [outer]')
    tom('il', '@loop.inner', 'select loop [inner]')

    tom('ab', '@block.outer', 'select block [outer]')
    tom('ib', '@block.inner', 'select block [inner]')
  end,
}
