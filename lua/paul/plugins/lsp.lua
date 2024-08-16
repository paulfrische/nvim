return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'williamboman/mason.nvim', config = true },
    { 'williamboman/mason-lspconfig.nvim', config = true },
  },

  config = function()
    require('lspconfig')['rust_analyzer'].setup({})
    require('lspconfig')['emmet_language_server'].setup({})
    require('lspconfig')['lua_ls'].setup({
      settings = {
        Lua = {
          hint = {
            enable = true,
            setType = true,
          },
        },
      },
    })

    -- require('mason-lspconfig').setup_handlers({
    --   function(server_name)
    --     require('lspconfig')[server_name].setup({})
    --   end,
    --   ['lua_ls'] = function()
    --     require('lspconfig').lua_ls.setup({
    --       settings = {
    --         Lua = {
    --           hint = {
    --             enable = true,
    --             setType = true,
    --           },
    --         },
    --       },
    --     })
    --   end,
    -- })

    local icons = require('paul.icons')
    vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, { desc = 'perform code actions ' .. icons.LSP })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Goto Definition ' .. icons.LSP })
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'Goto References ' .. icons.LSP })
    vim.keymap.set('n', 'gn', vim.lsp.buf.rename, { desc = 'Rename Symbol ' .. icons.LSP })
    vim.keymap.set('n', 'gs', vim.lsp.buf.document_symbol, { desc = 'Goto Document Symbols ' .. icons.LSP })
    vim.keymap.set('n', 'gh', function()
      ---@diagnostic disable-next-line: missing-parameter
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
    end, { desc = 'Toggle Inlay Hints ' .. icons.LSP })
  end,
}
