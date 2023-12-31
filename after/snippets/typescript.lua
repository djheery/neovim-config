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

local snippets, autoSnippets = {}, {}; 

local _ftconst = s(
  "_ftconst",
  fmt([[ 
   /* 
    * {}
    * 
    * @param: {}
    * @returns: {}
    */

    const {} = ({}: {}, {}: {}) => {{
      return {}
    }}
  ]], {
    i(1, "A method for..."), 
    i(2, "myParam for..."), 
    i(3, "This method returns..."),
    i(4, 'foo'), 
    i(5, 'num1'), 
    i(6, 'number'), 
    i(7,'num2'), 
    i(8, 'number'), 
    i(9, 'num1 + num2') 
  })
)

local _tinter = s(
  "_tinter", 
  fmt([[
    /*
     * An interface for {}
     *
     * @param: {} paramDescription
     */

    export interface {} {{
      {}, 
      {},  
    }}
  ]], {
    i(1, "Interface details"), 
    i(2, "paramName"), 
    i(3, "InterfaceName"), 
    i(4, "foo: string"), 
    i(5, "bar: number"), 
  })
)

local _tenum = s(
  "_tenum", 
  fmt([[
    /*
     * Why are you using an enum?????
     */

    export enum {} {{
      {},
      {}, 
    }}
  ]], {
    i(1, "EnumName"), 
    i(2, "FOO = 'FOO'"),
    i(3, "BAR = 'BAR'")
  })
)

local _ttyp = s(
  "_ttyp", 
  fmt([[
    /*
     * {}
     */

    export type {} = {}; 
  ]], {
    i(1, "This type is for"), 
    i(2, "TypeName"),
    i(3, "'FOO' | 'BAR'")
  })
)

local _tpojo = s(
  "_tpojo", 
  fmt([[ 
    /* A POJO for defining the allowable options for {} 
     * 
     * @param: {}  
     * @param: {} 
     */ 

    export const {} = {{
      {}: '{}', 
      {}: '{}', 
    }} as const; 

    /* 
     * A type for defining the option values of {} 
     */ 

    export type {} = ObjectKeys<typeof {}>; 

    /* 
     * A type for defining the option values of {}  
     */ 

    export type {} = ObjectValues<typeof {}>; 

  ]], {
    i(1, "MyPOJO"),
    i(2, "OPTION_ONE"),
    i(3, "OPTION_TWO"),
    i(4, "MyPOJO"),
    i(5, "OPTION_ONE"),
    i(6, "OPTION_ONE"),
    i(7, "OPTION_TWO"),
    i(8, "OPTION_TWO"),
    i(9, "MyPOJO"),
    i(10, "MyPOJOKeys"),
    i(11, "MyPOJO"),
    i(12, "MyPOJO"),
    i(13, "MyPOJOValues"),
    i(14, "MyPOJO"),
  })
)

table.insert(autoSnippets, _ftconst);
table.insert(autoSnippets, _tinter);
table.insert(autoSnippets, _tenum);
table.insert(autoSnippets, _ttyp);
table.insert(autoSnippets, _tpojo);

return snippets, autoSnippets
