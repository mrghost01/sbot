-- By AviraTeam https://telegram.me/avirateam
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\

local numbers = {}
numbers['ا'] = 1
numbers['ب'] = 2
numbers['ج'] = 3
numbers['د'] = 4
numbers['ه'] = 5
numbers['و'] = 6
numbers['ز'] = 7
numbers['ح'] = 8
numbers['ط'] = 9
numbers['ی'] = 10
numbers['ک'] = 20
numbers['ل'] = 30
numbers['م'] = 40
numbers['ن'] = 50
numbers['س'] = 60
numbers['ع'] = 70
numbers['ف'] = 80
numbers['ص'] = 90
numbers['ق'] = 100
numbers['ر'] = 200
numbers['ش'] = 300
numbers['ت'] = 400
numbers['ث'] = 500
numbers['خ'] = 600
numbers['ذ'] = 700
numbers['ض'] = 800
numbers['ظ'] = 900
numbers['غ'] = 900
local function convert(text)
    local text = text:gsub('ژ','ز')
    local text = text:gsub('گ','ک')
    local text = text:gsub('چ','ج')
    local text = text:gsub('پ','ب')
    local text = text:gsub('ئ','ی')
    local text = text:gsub('آ','ا')
    local text = text:gsub('ۀ','ه')
    local text = text:gsub('ي','ی')
    local text = text:gsub('ة','ه')
    local text = text:gsub('ؤ','و')
    return text
end
local function abjad(text,num,str)
    local num = num
    local text = text
    if text:match(str) then
for word in string.gmatch(text, str) do num = num + numbers[str]
end
text = text:gsub(str,'')
end
return text , num
end
local function run(msg, matches)
    local text = convert(matches[2])
    local num = 0
text , num = abjad(text,num,'ا')
text , num = abjad(text,num,'ب')
text , num = abjad(text,num,'ج')
text , num = abjad(text,num,'د')
text , num = abjad(text,num,'ه')
text , num = abjad(text,num,'و')
text , num = abjad(text,num,'ز')
text , num = abjad(text,num,'ح')
text , num = abjad(text,num,'ط')
text , num = abjad(text,num,'ی')
text , num = abjad(text,num,'ک')
text , num = abjad(text,num,'ل')
text , num = abjad(text,num,'م')
text , num = abjad(text,num,'ن')
text , num = abjad(text,num,'س')
text , num = abjad(text,num,'ع')
text , num = abjad(text,num,'ف')
text , num = abjad(text,num,'ص')
text , num = abjad(text,num,'ق')
text , num = abjad(text,num,'ر')
text , num = abjad(text,num,'ش')
text , num = abjad(text,num,'ت')
text , num = abjad(text,num,'ث')
text , num = abjad(text,num,'خ')
text , num = abjad(text,num,'ذ')
text , num = abjad(text,num,'ض')
text , num = abjad(text,num,'ظ')
text , num = abjad(text,num,'غ')
if text ~= '' then
  return 'Only Use Persian'  
end
return num
    end
  return {
patterns = {
    "^[!/#]([Aa][Bb][Jj][Aa][Dd]) (.*)$",
    "^[!/#]([Aa][Bb][Jj][Aa][Dd])$"
  },
run = run
  }  

-- By AviraTeam https://telegram.me/avirateam
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\
