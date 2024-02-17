local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
  vim.keymap.set('n', 'gn', vim.lsp.buf.rename, { desc = 'Rename Symbol', buffer = true })
  vim.lsp.inlay_hint.enable(0, true)
end)

require('mason-lspconfig').setup({
  ensure_installed = {
    'rust_analyzer',
    'lua_ls',
  },
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      -- (Optional) Configure lua language server for neovim
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  },
})

require('neodev').setup({})
