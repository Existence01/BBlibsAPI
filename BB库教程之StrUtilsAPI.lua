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

--[[
			将字符串转为Base64编码
			参数1:basestr:需要编码的字符串
]]

local str = require("StrUtilsAPI")
local basestr = "Hello!我叫羽"
local str64 = str.toBase64(basestr)
print(str64)	--输出SGVsbG8hMeaIkeWPq-e-vQ==

--[[
			为Base64解码
			参数1:basestr:需要解码的字符串
]]
local dec64 = str.fromBase64(str64)
print(dec64)	--输出Hello!我叫羽

--[[
			使用sha1加密字符串
			参数1:sha1str:需要加密的字符串
]]
local sha1str = "Hello!我叫羽"
local sha1 = str.SHA1(sha1str)
print(sha1)	--输出d956524b1d3f45e25e7fb09c8a55cc8c65930801

--[[
			生成crc32校验码
			参数1:需要生成的字符串
]]
local crc = "Hello!我叫羽"
local crc = str.CRC32(crc)
print(crc)	--输出207536055

--[[
			生成FCS16校验码
			参数1:需要生成的字符串
]]
local fcs = "Hello!我叫羽"
local fcs = str.FCS16(fcs)
print(fcs)	--输出54420

--[[
			生成FCS32校验码
			参数1:需要生成的字符串
]]
local fcs = "Hello!我叫羽"
local fcs = str.FCS32(fcs)
print(fcs)	--输出375729181

--[[
			加密字符串
			参数1:需要加密的字符串
			参数2:解密密钥
]]
local strenc = "Hello!我叫羽"
local key = "我叫啥??"
local enc = str.encrypt(strenc,key)
print(enc)	--输出V2P4X4O343E4Q494M3V2C3L5P5S5M4A27955I5R7F546R7Z7Z7

--[[
			解密字符串
			参数1:需要解密的字符串
			参数2:解密密钥
]]
local dec = str.decrypt(enc,key)
print(dec)	--输出Hello!我叫羽

--将字符串设置为URL编码
local url = str.urlEncode("http://xx.com")
print(url)	--http%3A%2F%2Fxx%2Ecom

--解析URL编码
local url = str.urlDecode(url)
print(url)	--http://xx.com

--判断字符串是否是一个邮箱地址
--是则返回true,否则返回false
local email = str.isEmailAddress('123456@qq.com')
print(email)

--将字符串按长度切割成table
local chunk = str.chunk('123456@qq.com',2)
for k,v in ipairs(chunk) do
	print(k,'=',v)
end
--[[
输出
1	=	12
2	=	34
3	=	56
4	=	@q
5	=	q.
6	=	co
7	=	m
]]

--查找字符串中某个字符第一次出现的位置
local find = str.find('ttt2355@qq.com==qq','qq')
print(find)	--输出9

--将字符串按指定字符切割成table
local seperate = str.seperate('213|345|567|000','|')
for k,v in ipairs(seperate) do
	print(k,'=',v)
end
--[[
输出
1	=	213
2	=	345
3	=	567
4	=	000
]]

--将字符串某个值替换成新的字符
local replace = str.replace('213|345|567|000','|','#')
print(replace)	--输出213#345#567#000

--将字符串随机重组
local jumble = str.jumble('aaaabbbbcccc')
print(jumble)	--babccacacabb

--加密字符串
--local base = str.toBase('asdvsd546234','asfvwq')
--print(base)
--解密字符串
--local dec = str.fromBase(base,'asfvwq')
--print(dec)

--将每个字符串转为二进制
local encbin = str.toBinary('大家好~我叫羽')
print(encbin)	--输出10110100:11110011:10111100:11010010:10111010:11000011:1111110:11001110:11010010:10111101:11010000:11010011:11110000

--将二进制字符转为字符串
local decbin = str.fromBinary(encbin)
print(decbin)--输出大家好~我叫羽

--将每个字符串转为八进制
local enoctal = str.toOctal('大家好~我叫羽')
print(enoctal)	--输出264:363:274:322:272:303:176:316:322:275:320:323:360

--将八进制字符转为字符串
local deoctal = str.fromOctal(enoctal)
print(deoctal)	--输出大家好~我叫羽

--将每个字符串转为十六进制
local enchex = str.toHex('大家好~我叫羽')
print(enchex)	--输出B4:F3:BC:D2:BA:C3:7E:CE:D2:BD:D0:D3:F0

--将十六进制字符转为字符串
local dechex = str.fromHex(enchex)
print(dechex)	--输出大家好~我叫羽

--将字符串转为base36编码
local base36 = str.toBase36('大家好~我叫羽')
print(base36)	--输出50:6R:58:5U:56:5F:3I:5Q:5U:59:5S:5V:6O

--将base36编码转为字符串
local decbase36 = str.fromBase36(base36)
print(decbase36)	--输出大家好~我叫羽

--将字符串转为base32编码
local base32 = str.toBase32('大家好~我叫羽')
print(base32)	--输出WTZ3ZUV2YN7M5UV52DJ7A

--将base32编码转为字符串
local decbase32 = str.fromBase32(base32)
print(decbase32)	--输出大家好~我叫羽

print '============'
--将字符串转为ROT13编码
local encrot13 = str.rot13('大家好~我叫羽')
print(encrot13)	--输出大家好~我叫羽

--将ROT47编码转为字符串
local encrot47 = str.rot47('大家好~我叫羽')
print(encrot47) --大家好O我叫羽

--将每个字符按char类型保存在table
local chartab = str.toCharTable('B~234羽DEA')
for k,v in ipairs(chartab) do
	print(k,'=',v)
end
--[[
输出
1	=	B
2	=	~
3	=	2
4	=	3
5	=	4
6	=	?
7	=	?
8	=	D
9	=	E
10	=	A
]]

--解析toCharTable
local fct = str.fromCharTable(chartab)
print(fct)	--输出B~234羽DEA

--将每个字符按字节保存在table
local bytetab = str.toByteTable('B~234羽DEA')
for k,v in ipairs(bytetab) do
	print(k,'=',v)
end

--[[
输出
1	=	B
2	=	~
3	=	2
4	=	3
5	=	4
6	=	?
7	=	?
8	=	D
9	=	E
10	=	A
1	=	66
2	=	126
3	=	50
4	=	51
5	=	52
6	=	211
7	=	240
8	=	68
9	=	69
10	=	65
]]

--解析toByteTable
local decbyte = str.fromByteTable(bytetab)
print(decbyte)	--输出B~234羽DEA

--查找字符串中是否包含某个字符
--找到返回true,否则返回false
local contains = str.contains('大家好|我叫羽','羽')
print(contains)	--true

--查找字符串中的第一个值是否为某个字符
--是则返回true,否则返回fasle
local startsWith = str.startsWith('大家好|我叫羽','羽')
print(startsWith)	--false

--查找字符串中的最后一个值是否为某个字符
--是则返回true,否则返回fasle
local endsWith = str.endsWith('大家好|我叫羽','羽')
print(endsWith)	--true

--去掉字符串头尾的空格
local trim = str.trim('    大家好 我 叫 羽         ')
print(trim) --输出大家好 我 叫 羽

--将字符串第一个字母变大写
local flu = str.firstLetterUpper('abcdefg')
print(flu) --Abcdefg

--将字符串除第一个字母外的所有字母变小写
local tit = str.titleCase('ABCDEA')
print(tit) --Abcdea

--[[
	---------------------------------
	---------------------------------
	---------------------------------
	=========BIT逻辑运算符===========
	---------------------------------
	---------------------------------
	---------------------------------
	
	--注意:使用逻辑运算需要修改BB库下的StrUtilsAPI.lua文件下的423行,找到local strutils = {},在这下一行加上这段代码
	strutils.bit = bit
	这样就可以使用逻辑运算了
]]

--异或
local bit = str.bit
local bxor = bit.bxor(20,13)
print(bxor)	--25

--逻辑与
local band = bit.band(10,2)
print(band) --2

--逻辑或
local bor = bit.bor(10,5)
print(bor) --15

--右移
local r = bit.brshift(13,1)
print(r)	--6

--左移
local l = bit.blshift(13,1)
print(l)	--26

--处理负数的异或
local bxor2 = bit.bxor2(-20,-13)
print(bxor2)

