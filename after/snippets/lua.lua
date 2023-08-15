local ls = require("luasnip")
local s = ls.s; 
local i = ls.i; 
local t = ls.t; 

local d = ls.dynamic_node; 
local c = ls.choice_node; 
local f = ls.function_node; 
local sn = ls.snippet_node; 

local fmt = require("luasnip.extras.fmt").fmt; 
local snippets, autoSnippets = {}, {}

local myFirstSnippet = s(
  "myFirstSnippet",
  {
    t("Hello, from your snippet"),
    i(1, " placeholder_text"),
    t({"", "This is another text node on a new line"})
  }
)

-- Fmt formats for us 
-- The insertNodes detail where inserts are placed 
local mySecondSnippet = s(
  "mySecondSnippet", 
  fmt([[
    local {} = function({})
      print({})
    end
  ]], {i(1, "myFunc"), i(2, "myParam"), i(3, "'hello world'")})
);


-- To Place curly brackes you can you have to double wrap them: {{}}
local myThirdSnippet = s(
  "_third", 
  fmt([[
    local {} = function({})
      local curly_braces = {{}}
      print({})
    end
  ]], {i(1, "myFunc"), i(2, "myParam"), i(3, "'hello world'")})
);

local myFourthSnippet = s(
  "myFourthSnippet", 
  fmt([[
    local {} = function({})
      local curly_braces = {{}}
      print({})
    end
  ]], {i(1, "myFunc"), c(2, { t(""), t("myArg"), }), i(3, "'hello world'")})
)


-- Auto Snippet 

local autoSnip = s("_at", 
  fmt([[
    local {} = function()
      print({})
    end
  ]],  {i(1, "myAutoFunc"), i(2, "'You are a bitch'")})
)

local autoSnippetOne = s("_auto_snip", { t("This is an autosnippet") })

-- This is an autosnippet



table.insert(autoSnippets, myThirdSnippet); 
table.insert(autoSnippets, autoSnip); 
table.insert(autoSnippets, autoSnippetOne); 
table.insert(snippets, myFourthSnippet); 
table.insert(snippets, mySecondSnippet)
table.insert(snippets, myFirstSnippet);


return snippets, autoSnippets; 
