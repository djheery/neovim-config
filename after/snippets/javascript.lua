local ls = require("luasnip")
local s = ls.s -- snippet
local i = ls.i -- insert node 
local t = ls.t -- text node 

local d = ls.dynamic_node
local c = ls.choice_node 
local f = ls.function_node
local sn = ls.snippet_node 

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras"); 

local snippets, autosnippets = {}, {}

local fconst = s(
  "_fconst", 
  fmt([[
  /* 
   * {}
   * 
   * @param: {}
   * @returns: {}
   */

   const {} = (arg1, arg2) => {{
      return arg1 + arg2;
   }}
  ]], {
    i(1, "A description about your method"), 
    i(2, "myParam"),
    i(3, "return information"),
    i(4, "foo"),
  })
)

local _rmethod =  s(
  "_rmethod", 
  fmt([[
    {}: () => {}
  ]], { i(1, "foo"), i("bar") })
  )

local _keval = s(
  "_keval", 
  fmt([[ 
   {}: {} 
  ]], { i(1, "foo"), i(2, "'bar'")})
)

local _string_literal = s(
  "_$i", 
  fmt([[ 
    ${{{}}}
  ]], { i(1, "myParam") })
)

local _string_literal_block = s(
  "_$bi",
  fmt([[ 
    `${{{}}}`
  ]], {i(1, "myParam") } )
)

local _string_literal_block_indented = s(
  "_$bb", 
  fmt([[
    `
      ${{{}}}
    `
  ]], { i(1, "myParam")})
)

table.insert(autosnippets, _string_literal);
table.insert(autosnippets, _string_literal_block_indented);
table.insert(autosnippets, _string_literal_block);
table.insert(autosnippets, _rmethod);
table.insert(autosnippets, _keval);
table.insert(autosnippets, fconst)

return snippets, autosnippets
