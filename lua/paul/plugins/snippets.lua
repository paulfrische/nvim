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
      s('func', fmt('function {}()\nend', { i(0) })),
      s('M', fmt('local M = {{}}\n\n{}\n\nreturn M', { i(0) })),
    })

    --- C ---
    ls.add_snippets('c', {
      s('main', fmt('int main(void) {{\n\t{}\n\treturn 0;\n}}', { i(0) })),
      s('st', fmt('typedef struct {{\n}} {};', { i(0) })),
    })

    --- Python ---
    ls.add_snippets('python', {
      s('main', fmt('def main() -> None:\n\t{}\n\nif __name__ == \'__main__\':\n\tmain()', { i(0) })),
    })

    --- Rust ---
    ls.add_snippets('rust', {
      s('region', fmt('// region:    --- {a}\n// endregion: --- {a}', { a = i(1) }, { repeat_duplicates = true })),
    })
  end,
}
