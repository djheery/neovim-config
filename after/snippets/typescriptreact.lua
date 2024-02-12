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

-- React functional component Boiler Plate

local _rfct = s(
  "_rfct", 
  fmt([[ 
    import styles from './{}.module.css'

    /* 
     * This is a functional component for {}
     * 
     * @param: myParam
     */ 

    const {}: React.FC = () => {{
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

local _rcpt= s(
  "_rcpe", 
  fmt([[ 
    import styles from './{}.module.css'

    /* 
     * This is a page component for the {}
     * 
     * @param: myParam
     */ 

    const {}:React.FC = (props) => {{
      return (
        <div className={{styles["foo"]}}>
          <h1>{}</h1>
        </div>
      )
    }}

    export default {}
  ]], {getFileName(), getFileName(), getFileName(), getFileName(), getFileName()})
)

table.insert(autoSnippets, _rcpt);
table.insert(autoSnippets, _rfct);



return snippets, autoSnippets
