local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node



local function setup()
	local files = {}
	for dir in io.popen([[ls -pa /home/joshua/ | grep -v /]]):lines() do files[#files+1]=dir end
	for i, file in ipairs(files) do print(tostring(i).." : "..file) end
end

return {setup = setup}
