--[[
			================================
			================================
			================================
			================================
			=======BB库详解之JSON.lua=======
			================================
			================================
			================================
			===========================By.羽
]]
--修改json
--这里一定要用大写的JSON引入
local json = require("bblibs/JSON")
local ret,results=showUI("ui.json");      --显示未更改的UI界面
local content = getUIContent("ui.json")   --获得文件ui.json的内容
lua_value = json.decode(content)   --对获取到的json字符串解码
lua_value.width = 500     --将ui窗口宽度赋值为500
lua_value.height = 400    --将ui窗口宽度赋值为450
lua_value.views[1].color = 0x7777
showUI(json.encode(lua_value))     --重新编码json字符串，窗口将按照新设定的尺寸显示