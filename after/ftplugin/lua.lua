--- snippets ---
require('luasnip.session.snippet_collection').clear_snippets('lua')

local ls = require('luasnip')
local s = ls.snippet
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

ls.add_snippets('lua', {
  s('req', fmt('require(\'{}\')', { i(0) })),
})

--- options ---
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
