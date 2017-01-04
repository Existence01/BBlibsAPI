--[[
			================================
			================================
			================================
			================================
			=======BB库详解之pos.lua========
			================================
			================================
			================================
			============================By.羽
]]

local pos = require("bblibs.pos")
--计算两个颜色的精度
local color1,color2 = 0x7777,0x4444
--这里一定要用bb.degree(color1,color2),而不能使用bb:degree(color1,color2)
local c = pos.degree(color1,color2)
sysLog(c)	--输出87,表示精度是87的情况下能找到color1到color2范围内的颜色

--计算两个坐标之间的距离
local new = pos:new(0,0)
local tab = {x=100,y=100}
local dis=new:distanceBetween(tab)
sysLog(dis)	--输出141.42135623731,表示从坐标0,0到坐标100,100的距离

--[[
	单击
	参数1:sleep:按下后的延迟时间,不写默认是60~80毫秒的随机数
	参数2:sleep1:松开后的延迟时间,不写默认是20毫秒
]]
--local new = pos:new(100,100)
--new:click(sleep,sleep1)

--[[
	精确滑动
	参数1:move:一个table类型,里面的x,y表示原点坐标
	参数2:step:滑动速度,值越大滑动速度越大,默认20
	参数3,4:sleep1,sleep2:滑动延时,默认500,20毫秒
]]
	local new = pos:new(100,200)
	local move = {x=0,y=0}
	local step = 90
	local sleep1,sleep2 = 30,40
	--表示以坐标0,0为原点滑动到100,200坐标上
	--new:touchMoveTo(move,step,sleep1,sleep2)

--[[
	计算角度
	参数1:tab:一个table类型,里面的x,y表示原点坐标
]]
	local new = pos:new(150,250)
	local tab = {x=200,y=200}
	local ang=new:angleBetween(tab)
	sysLog(ang)	--90
	
--[[
	根据角度和距离找点
	参数1:distance:角度
	参数2:angle:距离
]]
	--这个函数没用过
	local new = pos:new(250,550,0)
	local polar=new:polarProjection(45, 700)
	
	--[[
		根据颜色点击
		参数1:s:颜色精度,默认90
	]]
	local new = pos:new(250,550,0x333333)
	local s=95
	--表示如果坐标250,550的颜色精度在95中存在0x333333颜色则点击该坐标
	local polar=new:isColorClick(s)
