
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

local array_auto = s(
  "_[", 
  fmt([[ 
    [{}]
  ]], { i(1, "") })
)

local dict_auto = s(
  "_{", 
  fmt([[ 
   {{{}}}
  ]], i(1, ""))
)

table.insert(autosnippets, array_auto)
table.insert(autosnippets, dict_auto)

return snippets, autosnippets

