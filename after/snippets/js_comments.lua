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

local methodComment = s(
  "_mcom",
  fmt([[
    /* 
     * {}
     * 
     * @param: {}
     * @returns: {}
     */
  ]], {i(1, "Details about your method"), i(2, "myParam"), i(3, "This returns")})
)

local typeComment = s(
  "_tcom",
  fmt([[
   // A type for {}
  ]], 
  {i(1, "type definition")})
)

local interfaceComment = s(
  "_icom",
  fmt([[
    /* 
     * {}
     * 
     * @param: {}
     */
  ]], {i(1, "Details about your Interface"), i(2, "interfaceParam")})
)

local enumComment =  s(
  "_encom",
  fmt([[
    /* 
     * {}
     */
  ]], {i(1, "Details about your enum --maybe don't use?")})
)


table.insert(autosnippets, methodComment);
table.insert(autosnippets, typeComment);
table.insert(autosnippets, interfaceComment);
table.insert(autosnippets, enumComment);
table.insert(autosnippets, fixComment)
table.insert(autosnippets, hackComment)
table.insert(autosnippets, paramComment)
table.insert(autosnippets, todoComment)

return snippets, autosnippets
