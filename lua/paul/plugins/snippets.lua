return {
  'L3MON4D3/LuaSnip',
  build = 'make install_jsregexp',
  config = function()
    require('luasnip.session.snippet_collection').clear_snippets()

    local ls = require('luasnip')
    local s = ls.snippet
    local i = ls.insert_node
    local fmt = require('luasnip.extras.fmt').fmt

    --- Lua ---
    ls.add_snippets('lua', {
      s('req', fmt('require(\'{}\')', { i(0) })),
    })

    --- C ---
    ls.add_snippets('c', {
      s('main', fmt('int main(void) {{\n\t{}\n\treturn 0;\n}}', { i(0) })),
      s('st', fmt('typedef struct {{\n}} {};', { i(0) })),
    })
  end,
}
