local tdc = require("todo-comments")

tdc.setup({
  merge_keywords = true,
  keywords = {
     FIX    = { alt = { "SMELL" } },
     param  = { icon = "@", color = "#4169e1" },
     returns =  { icon = "󰌑", color = "#4169e1" },
     QUESTION = { icon = "", color = "#FFBF00" },
     WARNING = { icon = "", color = "#ED2939" },
     ["MY_SPEC"] = { icon = "", color = "#f6fd22", alt = {"!!"} },
     ["TDL"] = { icon = " ", color = "#BA992f", alt = { "ff", "_TODO_" } },
     example = { icon = "", color="#95D5B2" },
 },
 highlight = {
  multiline = false,
 },

});

-- MY_SPEC: This is my spec 
-- HACK: This is hacky
-- @param: myParam This is my param 
-- @returns: this method returns 
-- @PERF: Performance 
-- @NOTE: This is a note 
-- !WARNING: This is a warining
-- !FIX:  Fix Me Please;
-- ?QUESTION: This is a question
-- TODO: Multi line disables
-- @TODO: A Now todo
-- @param: 
-- >TDL: my todo 
-- _TODO_: 
-- @example: hello 
-- SMELL
