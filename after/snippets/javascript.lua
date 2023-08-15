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
  "_ftconst", 
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

table.insert(autosnippets, fconst)

return snippets, autosnippets
