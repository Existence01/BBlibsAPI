--[[
			================================
			================================
			================================
			================================
			===BB�����֮StrUtilsAPI.lua=====
			================================
			================================
			================================
			===========================By.��
]]

--[[
			���ַ���תΪBase64����
			����1:basestr:��Ҫ������ַ���
]]
local basestr = "Hello!�ҽ���"
local str64 = str.toBase64(basestr)
print(str64)	--���SGVsbG8hMeaIkeWPq-e-vQ==

--[[
			ΪBase64����
			����1:basestr:��Ҫ������ַ���
]]
local dec64 = str.fromBase64(str64)
print(dec64)	--���Hello!�ҽ���

--[[
			ʹ��sha1�����ַ���
			����1:sha1str:��Ҫ���ܵ��ַ���
]]
local sha1str = "Hello!�ҽ���"
local sha1 = str.SHA1(sha1str)
print(sha1)	--���d956524b1d3f45e25e7fb09c8a55cc8c65930801

--[[
			����crc32У����
			����1:��Ҫ���ɵ��ַ���
]]
local crc = "Hello!�ҽ���"
local crc = str.CRC32(crc)
print(crc)	--���207536055

--[[
			����FCS16У����
			����1:��Ҫ���ɵ��ַ���
]]
local fcs = "Hello!�ҽ���"
local fcs = str.FCS16(fcs)
print(fcs)	--���54420

--[[
			����FCS32У����
			����1:��Ҫ���ɵ��ַ���
]]
local fcs = "Hello!�ҽ���"
local fcs = str.FCS32(fcs)
print(fcs)	--���375729181

--[[
			�����ַ���
			����1:��Ҫ���ܵ��ַ���
			����2:������Կ
]]
local strenc = "Hello!�ҽ���"
local key = "�ҽ�ɶ??"
local enc = str.encrypt(strenc,key)
print(enc)	--���V2P4X4O343E4Q494M3V2C3L5P5S5M4A27955I5R7F546R7Z7Z7

--[[
			�����ַ���
			����1:��Ҫ���ܵ��ַ���
			����2:������Կ
]]
local dec = str.decrypt(enc,key)
print(dec)	--���Hello!�ҽ���

local str = require("StrUtilsAPI")

--���ַ�������ΪURL����
local url = str.urlEncode("http://xx.com")
print(url)	--http%3A%2F%2Fxx%2Ecom

--����URL����
local url = str.urlDecode(url)
print(url)	--http://xx.com

--�ж��ַ����Ƿ���һ�������ַ
--���򷵻�true,���򷵻�false
local email = str.isEmailAddress('123456@qq.com')
print(email)

--���ַ����������и��table
local chunk = str.chunk('123456@qq.com',2)
for k,v in ipairs(chunk) do
	print(k,'=',v)
end
--[[
���
1	=	12
2	=	34
3	=	56
4	=	@q
5	=	q.
6	=	co
7	=	m
]]

--�����ַ�����ĳ���ַ���һ�γ��ֵ�λ��
local find = str.find('ttt2355@qq.com==qq','qq')
print(find)	--���9

--���ַ�����ָ���ַ��и��table
local seperate = str.seperate('213|345|567|000','|')
for k,v in ipairs(seperate) do
	print(k,'=',v)
end
--[[
���
1	=	213
2	=	345
3	=	567
4	=	000
]]

--���ַ���ĳ��ֵ�滻���µ��ַ�
local replace = str.replace('213|345|567|000','|','#')
print(replace)	--���213#345#567#000

--���ַ����������
local jumble = str.jumble('aaaabbbbcccc')
print(jumble)	--babccacacabb

--�����ַ���
--local base = str.toBase('asdvsd546234','asfvwq')
--print(base)
--�����ַ���
--local dec = str.fromBase(base,'asfvwq')
--print(dec)

--��ÿ���ַ���תΪ������
local encbin = str.toBinary('��Һ�~�ҽ���')
print(encbin)	--���10110100:11110011:10111100:11010010:10111010:11000011:1111110:11001110:11010010:10111101:11010000:11010011:11110000

--���������ַ�תΪ�ַ���
local decbin = str.fromBinary(encbin)
print(decbin)--�����Һ�~�ҽ���

--��ÿ���ַ���תΪ�˽���
local enoctal = str.toOctal('��Һ�~�ҽ���')
print(enoctal)	--���264:363:274:322:272:303:176:316:322:275:320:323:360

--���˽����ַ�תΪ�ַ���
local deoctal = str.fromOctal(enoctal)
print(deoctal)	--�����Һ�~�ҽ���

--��ÿ���ַ���תΪʮ������
local enchex = str.toHex('��Һ�~�ҽ���')
print(enchex)	--���B4:F3:BC:D2:BA:C3:7E:CE:D2:BD:D0:D3:F0

--��ʮ�������ַ�תΪ�ַ���
local dechex = str.fromHex(enchex)
print(dechex)	--�����Һ�~�ҽ���

--���ַ���תΪbase36����
local base36 = str.toBase36('��Һ�~�ҽ���')
print(base36)	--���50:6R:58:5U:56:5F:3I:5Q:5U:59:5S:5V:6O

--��base36����תΪ�ַ���
local decbase36 = str.fromBase36(base36)
print(decbase36)	--�����Һ�~�ҽ���

--���ַ���תΪbase32����
local base32 = str.toBase32('��Һ�~�ҽ���')
print(base32)	--���WTZ3ZUV2YN7M5UV52DJ7A

--��base32����תΪ�ַ���
local decbase32 = str.fromBase32(base32)
print(decbase32)	--�����Һ�~�ҽ���

print '============'
--���ַ���תΪROT13����
local encrot13 = str.rot13('��Һ�~�ҽ���')
print(encrot13)	--�����Һ�~�ҽ���

--��ROT47����תΪ�ַ���
local encrot47 = str.rot47('��Һ�~�ҽ���')
print(encrot47) --��Һ�O�ҽ���

--��ÿ���ַ���char���ͱ�����table
local chartab = str.toCharTable('B~234��DEA')
for k,v in ipairs(chartab) do
	print(k,'=',v)
end
--[[
���
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

--����toCharTable
local fct = str.fromCharTable(chartab)
print(fct)	--���B~234��DEA

--��ÿ���ַ����ֽڱ�����table
local bytetab = str.toByteTable('B~234��DEA')
for k,v in ipairs(bytetab) do
	print(k,'=',v)
end

--[[
���
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

--����toByteTable
local decbyte = str.fromByteTable(bytetab)
print(decbyte)	--���B~234��DEA

--�����ַ������Ƿ����ĳ���ַ�
--�ҵ�����true,���򷵻�false
local contains = str.contains('��Һ�|�ҽ���','��')
print(contains)	--true

--�����ַ����еĵ�һ��ֵ�Ƿ�Ϊĳ���ַ�
--���򷵻�true,���򷵻�fasle
local startsWith = str.startsWith('��Һ�|�ҽ���','��')
print(startsWith)	--false

--�����ַ����е����һ��ֵ�Ƿ�Ϊĳ���ַ�
--���򷵻�true,���򷵻�fasle
local endsWith = str.endsWith('��Һ�|�ҽ���','��')
print(endsWith)	--true

--ȥ���ַ���ͷβ�Ŀո�
local trim = str.trim('    ��Һ� �� �� ��         ')
print(trim) --�����Һ� �� �� ��

--���ַ�����һ����ĸ���д
local flu = str.firstLetterUpper('abcdefg')
print(flu) --Abcdefg

--���ַ�������һ����ĸ���������ĸ��Сд
local tit = str.titleCase('ABCDEA')
print(tit) --Abcdea

--[[
	---------------------------------
	---------------------------------
	---------------------------------
	=========BIT�߼������===========
	---------------------------------
	---------------------------------
	---------------------------------
	
	--ע��:ʹ���߼�������Ҫ�޸�BB���µ�StrUtilsAPI.lua�ļ��µ�423��,�ҵ�local strutils = {},������һ�м�����δ���
	strutils.bit = bit
	�����Ϳ���ʹ���߼�������
]]

--���
local bit = str.bit
local bxor = bit.bxor(20,13)
print(bxor)	--25

--�߼���
local band = bit.band(10,2)
print(band) --2

--�߼���
local bor = bit.bor(10,5)
print(bor) --15

--����
local r = bit.brshift(13,1)
print(r)	--6

--����
local l = bit.blshift(13,1)
print(l)	--26

--�����������
local bxor2 = bit.bxor2(-20,-13)
print(bxor2)

