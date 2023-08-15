local ls = require("luasnip")
local s = ls.s -- snippet
local i = ls.i -- insert node 
local t = ls.t -- text node 

local d = ls.dynamic_node
local c = ls.choice_node 
local f = ls.function_node
local sn = ls.snippet_node 

local fmt = require("luasnip.extras.fmt")
local rep = require("luasnip.extras"); 

local snippets, autosnippets = {}, {}

local todoComment = s(
  "_todo",
  {
    t("// TODO: "), 
    i(1, " enter your comment here"),
  }
)

local fixComment = s(
  "_fix",
  {
    t("// FIX: "), 
    i(1, " enter your comment here"),
  }
)

local paramComment = s(
  "_param",
  {
    t("// @param: "), 
    i(1, " enter your comment here"),
  }
)

local hackComment = s(
  "_hack",
  {
    t("// HACK: "), 
    i(1, " enter your comment here"),
  }
)

table.insert(autosnippets, fixComment)
table.insert(autosnippets, hackComment)
table.insert(autosnippets, paramComment)
table.insert(autosnippets, todoComment)

return snippets, autosnippets
