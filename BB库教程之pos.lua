--[[
			================================
			================================
			================================
			================================
			=======BB�����֮pos.lua========
			================================
			================================
			================================
			============================By.��
]]

local pos = require("bblibs/pos")
--����������ɫ�ľ���
local color1,color2 = 0x7777,0x4444
--����һ��Ҫ��bb.degree(color1,color2),������ʹ��bb:degree(color1,color2)
local c = pos.degree(color1,color2)
sysLog(c)	--���87,��ʾ������87����������ҵ�color1��color2��Χ�ڵ���ɫ

--������������֮��ľ���
local new = pos:new(0,0)
local tab = {x=100,y=100}
local dis=new:distanceBetween(tab)
sysLog(dis)	--���141.42135623731,��ʾ������0,0������100,100�ľ���

--[[
	����
	����1:sleep:���º���ӳ�ʱ��,��дĬ����60~80����������
	����2:sleep1:�ɿ�����ӳ�ʱ��,��дĬ����20����
]]
--local new = pos:new(100,100)
--new:click(sleep,sleep1)

--[[
	��ȷ����
	����1:move:һ��table����,�����x,y��ʾԭ������
	����2:step:�����ٶ�,ֵԽ�󻬶��ٶ�Խ��,Ĭ��20
	����3,4:sleep1,sleep2:������ʱ,Ĭ��500,20����
]]
	local new = pos:new(100,200)
	local move = {x=0,y=0}
	local step = 90
	local sleep1,sleep2 = 30,40
	--��ʾ������0,0Ϊԭ�㻬����100,200������
	--new:touchMoveTo(move,step,sleep1,sleep2)

--[[
	����Ƕ�
	����1:tab:һ��table����,�����x,y��ʾԭ������
]]
	local new = pos:new(150,250)
	local tab = {x=200,y=200}
	local ang=new:angleBetween(tab)
	sysLog(ang)	--90
	
--[[
	���ݽǶȺ;����ҵ�
	����1:distance:�Ƕ�
	����2:angle:����
]]
	--�������û�ù�
	local new = pos:new(250,550,0)
	local polar=new:polarProjection(45, 700)
	
	--[[
		������ɫ���
		����1:s:��ɫ����,Ĭ��90
	]]
	local new = pos:new(250,550,0x333333)
	local s=95
	--��ʾ�������250,550����ɫ������95�д���0x333333��ɫ����������
	local polar=new:isColorClick(s)