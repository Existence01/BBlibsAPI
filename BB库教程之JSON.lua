--[[
			================================
			================================
			================================
			================================
			=======BB�����֮JSON.lua=======
			================================
			================================
			================================
			===========================By.��
]]
--�޸�json
--����һ��Ҫ�ô�д��JSON����
local json = require("bblibs/JSON")
local ret,results=showUI("ui.json");      --��ʾδ���ĵ�UI����
local content = getUIContent("ui.json")   --����ļ�ui.json������
lua_value = json.decode(content)   --�Ի�ȡ����json�ַ�������
lua_value.width = 500     --��ui���ڿ�ȸ�ֵΪ500
lua_value.height = 400    --��ui���ڿ�ȸ�ֵΪ450
lua_value.views[1].color = 0x7777
showUI(json.encode(lua_value))     --���±���json�ַ��������ڽ��������趨�ĳߴ���ʾ