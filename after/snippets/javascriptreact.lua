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

-- A method for getting the file name 

local getFileName = function()
  return f(function()
    return vim.fn.fnamemodify(vim.fn.expand('%'), ':t:r')
  end) 
end

local autoSnippets, snippets = {}, {};

-- An insulting test 

local _test = s(
 "_test", 
 {t("const bitch = () => 'You are a bitch'")}
)

-- React functional component Boiler Plate

local _rcfe = s(
  "_rcfe", 
  fmt([[ 
    import styles from './{}.module.css'

    /* 
     * This is a functional component for {}
     * 
     * @param: myParam
     */ 

    const {} = (props) => {{
      return (
        <div className={{styles["foo"]}}>
          <span>{}</span>
        </div>
      )
    }}

    export default {}
  ]], {getFileName(), getFileName(), getFileName(), getFileName(), getFileName()})
)

-- React functional component Boiler Plate

local _rcpe= s(
  "_rcpe", 
  fmt([[ 
    import styles from './{}.module.css'

    /* 
     * This is a page component for the {}
     * 
     * @param: myParam
     */ 

    const {} = (props) => {{
      return (
        <div className={{styles["foo"]}}>
          <h1>{}</h1>
       </div>
      )
    }}

    export default {}
  ]], {getFileName(), getFileName(), getFileName(), getFileName(), getFileName()})
)

local _cdiv = s(
  "_cdiv", 
  fmt([[
    <div className={{styles["{}"]}}>

    </div>
  ]], i(1, "class-name"))
)

local _csstyles = s(
  "_csstyles", 
  fmt([[
    styles["{}"]
  ]], { i(1, "class-name") })
)


table.insert(autoSnippets, _rcfe)
table.insert(autoSnippets, _csstyles)
table.insert(autoSnippets, _cdiv)
table.insert(autoSnippets, _rcpe)
table.insert(autoSnippets, _test)

return snippets, autoSnippets
