--[[
			
			================================
			================================
			================================
			================================
			=======BB库详解之md5.lua========
			================================
			================================
			================================
			============================By.羽
]]

--MD5加密字符串
local md5=require("bblibs/md5")
local en=md5.sumhexa('123')
sysLog(en)	--输出202cb962ac59075b964b07152d234b70

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

local pos = require("bblibs/pos")
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
--[[local json = require("bblibs/JSON")
local ret,results=showUI("ui.json");      --显示未更改的UI界面
local content = getUIContent("ui.json")   --获得文件ui.json的内容
lua_value = json.decode(content)   --对获取到的json字符串解码
lua_value.width = 500     --将ui窗口宽度赋值为500
lua_value.height = 400    --将ui窗口宽度赋值为450
lua_value.views[1].color = 0x7777
showUI(json.encode(lua_value))     --重新编码json字符串，窗口将按照新设定的尺寸显示]]

--[[
			================================
			================================
			================================
			================================
			===BB库详解之StrUtilsAPI.lua=====
			================================
			================================
			================================
			===========================By.羽
]]

local str = require("bblibs/StrUtilsAPI")

--[[
			将字符串转为Base64编码
			参数1:basestr:需要编码的字符串
]]
local basestr = "Hello!我叫羽"
local str64 = str.toBase64(basestr)
sysLog(str64)	--输出SGVsbG8hMeaIkeWPq-e-vQ==

--[[
			为Base64解码
			参数1:basestr:需要解码的字符串
]]
local dec64 = str.fromBase64(str64)
sysLog(dec64)	--输出Hello!我叫羽

--[[
			使用sha1加密字符串
			参数1:sha1str:需要加密的字符串
]]
local sha1str = "Hello!我叫羽"
local sha1 = str.SHA1(sha1str)
sysLog(sha1)	--输出d956524b1d3f45e25e7fb09c8a55cc8c65930801

--[[
			生成crc32校验码
			参数1:需要生成的字符串
]]
local crc = "Hello!我叫羽"
local crc = str.CRC32(crc)
sysLog(crc)	--输出207536055

--[[
			生成FCS16校验码
			参数1:需要生成的字符串
]]
local fcs = "Hello!我叫羽"
local fcs = str.FCS16(fcs)
sysLog(fcs)	--输出54420

--[[
			生成FCS32校验码
			参数1:需要生成的字符串
]]
local fcs = "Hello!我叫羽"
local fcs = str.FCS32(fcs)
sysLog(fcs)	--输出375729181

--[[
			加密字符串
			参数1:需要加密的字符串
			参数2:解密密钥
]]
local strenc = "Hello!我叫羽"
local key = "你是不是傻逼??"
local enc = str.encrypt(strenc,key)
sysLog(enc)	--输出V2P4X4O343E4Q494M3V2C3L5P5S5M4A27955I5R7F546R7Z7Z7

--[[
			解密字符串
			参数1:需要解密的字符串
			参数2:解密密钥
]]
local key = "你是不是傻逼??"
local dec = str.decrypt(enc,key)
sysLog(dec)	--输出Hello!我叫羽

--[[
			================================
			================================
			================================
			================================
			======BB库详解之utils.lua=======
			================================
			================================
			================================
			===========================By.羽
]]

require("bblibs/utils")
--[[
	格式化输出
	参数1:输出的格式类型,具体参数参考lua手册
	参数2:传入的字符串
]]
--以ASCII码输出
sysLogFmt('%c',90)	--Z

--任意输出,不支持输出数组
sysLogLst('HELLO!!!','我叫羽','!!!!')	--输出 HELLO!!!  我叫羽  !!!! 
sysLogLst({id=1,name="羽"})	--输出  table: 0x171f8c90 

--点击
tap(100,100)

--模拟滑动操作，从点(x1, y1)划到到(x2, y2)
swip(100,200,100,500)

--[[
		多点颜色对比
		参数1:table类型,table.x,table.y,table.color
		参数2:对比颜色精度,默认90
		参数3:是否使用keepScreen,默认false
]]
local color = {
	x={100,200,300},
	y={100,200,300},
	color={0xff,0xee,0x2f3}
}
cmpColor(color,95,true)

--[[
			================================
			================================
			================================
			================================
			======BB库详解之SOCKET库========
			================================
			================================
			================================
			===========================By.羽
]]
