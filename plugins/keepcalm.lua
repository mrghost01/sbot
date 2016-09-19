do

local function run(msg,matches)
if matches[1]:lower() == 'keepcalm' then
local text = URL.escape(matches[2]) -- text
local bc = '1b037d' 
local size = '500'
local tc = 'ffffff'
local style = '%EE%BB%B0%0D%0A'

if matches[6] == '1' then -- styles
style = '%EE%BB%AA%0D%0A'
elseif matches[6] == '2' then
style = '%EE%BB%AB%0D%0A'
elseif matches[6] == '3' then
style = '%EE%BB%AC%0D%0A'
elseif matches[6] == '4' then
style = '%EE%BB%AD%0D%0A'
elseif matches[6] == '5' then
style = '%EE%BB%BD%0D%0A'
elseif matches[6] == '6' then
style = '%EE%BB%B7%0D%0A'
elseif matches[6] == '7' then
style = '%EE%BB%B4%0D%0A'
elseif matches[6] == '8' then
style = '%EE%BB%B1%0D%0A'
elseif matches[6] == '9' then
style = '%EE%BB%AE%0D%0A'
elseif matches[6] == '10' then
style = '%EE%BB%AF%0D%0A'
elseif matches[6] == '11' then
style = '%EE%BB%BC%0D%0A'
elseif matches[6] == '12' then
style = '%EE%BB%B3%0D%0A'
elseif matches[6] == '13' then
style = '%EE%BB%B0%0D%0A'
elseif matches[6] == '14' then
style = '%EE%BB%B2%0D%0A'
elseif matches[6] == '15' then
style = '%EE%BB%BF%0D%0A'
elseif matches[6] == '16' then
style = '%EE%BB%B8%0D%0A'
elseif matches[6] == '17' then
style = '%EE%BB%B9%0D%0A'
elseif matches[6] == '18' then
style = '%EE%BB%BE%0D%0A'
elseif matches[6] == '19' then
style = '%EE%BB%BB%0D%0A'
elseif matches[6] == '20' then
style = '%EE%BB%B6%0D%0A'
elseif matches[6] == '21' then
style = '%EE%BB%BA%0D%0A'
elseif matches[6] == '22' then
style = '%EE%BB%B5%0D%0A'
elseif matches[6] == '23' then
style = '%EE%BC%81%0D%0A'
elseif matches[6] == '24' then
style = '%EE%BC%80%0D%0A'
elseif matches[6] == '25' then
style = '%EE%BC%82%0D%0A'
elseif matches[6] == '26' then
style = '%EE%BC%83%0D%0A'
elseif matches[6] == '27' then
style = '%EE%BC%85%0D%0A'
elseif matches[6] == '28' then
style = '%EE%BC%84%0D%0A'
end

if matches[4] == 'pink' then -- text colors
bc = 'e3068d'
elseif matches[4] == 'green' then
bc = '037d12'
elseif matches[4] == 'blue' then
bc = '1b037d'
elseif matches[4] == 'cyan' then
bc = '0cc0fd'
elseif matches[4] == 'red' then
bc = 'e31f17'
elseif matches[4] == 'yellow' then
bc = 'F7FF03'
elseif matches[4] == 'gold' then
bc = 'd4af37'
elseif matches[4] == 'black' then
bc = '000000'
elseif matches[4] == 'cream' then
bc = 'fffdd0'
elseif matches[4] == 'white' then
bc = 'ffffff'
elseif matches[4] == 'orange' then
bc = 'FF960D' 
end

if matches[5] == 'white' then -- background colors
tc = 'ffffff'
elseif matches[5] == 'pink' then
tc = 'e3068d'
elseif matches[5] == 'green' then
tc = '037d12'
elseif matches[5] == 'blue' then
tc = '1b037d'
elseif matches[5] == 'cyan' then
tc = '0cc0fd'
elseif matches[5] == 'red' then
tc = 'e31f17'
elseif matches[5] == 'yellow' then
tc = 'F7FF03'
elseif matches[5] == 'cream' then
tc = 'fffdd0'
elseif matches[5] == 'gold' then
tc = 'd4af37'
elseif matches[5] == 'black' then
tc = '000000'
elseif matches[5] == 'orange' then
tc = 'FF960D' 
end

if matches[3] == 'small' then -- size
size = '300'
elseif matches[3] == 'medium' then
size = '500'
elseif matches[3] == 'larg' then
size = '700'
end



local base_url = 'http://www.keepcalmstudio.com/-/p.php?t='..style..''..text..'&bc='..bc..'&tc='..tc..'&cc='..tc..'&uc=true&ts=true&ff=PNG&w='..size..'&ps=sq'
local file = download_to_file(base_url,'Avira.webp') -- for save sticker

--local file = download_to_file(base_url,'Avira.png') -- for save photo
if msg.to.type == 'channel' then
send_document('channel#id'..msg.to.id, file, ok_cb, false) -- for send saved sticker

--send_photo2('channel#id'..msg.to.id, file, 'By @MohammadArak', ok_cb, false) -- for send saved photo
end

end
end

return {
usage = [[
Get Sticker From KeepCalm : /keepcalm (text) (size) (background color) (text color) (style 1 to 28)
Example :
/keepcalm @MohammadArak small blue white 13
]],
  patterns = {
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (1)$", -- style
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (2)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (3)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (4)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (5)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (6)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (7)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (8)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (9)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (10)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (11)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (12)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (13)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (14)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (15)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (16)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (17)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (18)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (19)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (20)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (21)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (22)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (23)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (24)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (25)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (26)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (27)$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (28)$", -- end style
 
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) ([Gg][Oo][Ll][Dd])$", -- bc colors
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) ([Rr][Ee][Dd])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) ([Bb][Ll][Aa][Cc][Kk])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) ([Bb][Ll][Uu][Ee])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) ([Gg][Rr][Ee][Ee][Nn])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) ([Yy][Ee][Ll][Ll][Oo][Ww])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) ([Pp][Ii][Nn][Kk])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) ([Cc][Yy][Aa][Nn])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) ([Cc][Rr][Ee][Aa][Mm])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) ([Oo][Rr][Aa][Nn][Gg][Ee])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) ([Ww][Hh][Ii][Tt][Ee])$", -- end bc colors
 
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) ([Gg][Oo][Ll][Dd])$", -- text colors
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) ([Rr][Ee][Dd])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) ([Bb][Ll][Aa][Cc][Kk])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) ([Bb][Ll][Uu][Ee])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) ([Gg][Rr][Ee][Ee][Nn])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) ([Yy][Ee][Ll][Ll][Oo][Ww])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) ([Pp][Ii][Nn][Kk])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) ([Cc][Yy][Aa][Nn])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) ([Cc][Rr][Ee][Aa][Mm])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) ([Oo][Rr][Aa][Nn][Gg][Ee])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) ([Ww][Hh][Ii][Tt][Ee])$", -- end text colors
 
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) ([Ss][Mm][Aa][Ll])$", -- size
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) ([Mm][Ee][Dd][Ii][Uu][Mm])$",
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) ([Ll][Aa][Rr][Gg])$", -- end size
 
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*)$", -- only text
 "^[!/#]([Kk][Ee][Ee][Pp][Cc][Aa][Ll][Mm]) (.*) (.*) (.*) (.*) (.*)$",
  },
  run = run,
}

end