--- snippets ---
require('luasnip.session.snippet_collection').clear_snippets('c')

local ls = require('luasnip')
local s = ls.snippet
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

ls.add_snippets('c', {
  s('main', fmt('int main(void) {{\n\t{}\n\treturn 0;\n}}', { i(0) })),
  s('st', fmt('typedef struct {{\n}} {};', { i(0) })),
})

--- options ---
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.commentstring = '// %s'
