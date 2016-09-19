-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\

do

local function run(msg, matches)
if matches[1]:lower() == 'image' then
        local text = URL.escape(matches[2])
        local color = 'blue'
        if matches[3] == 'red' then
            color = 'red'
        elseif matches[3] == 'black' then
            color = 'black'
      elseif matches[3] == 'blue' then
          color = 'blue'
    elseif matches[3] == 'green' then
        color = 'green'
    elseif matches[3] == 'yellow' then
        color = 'yellow'
    elseif matches[3] == 'pink' then
        color = 'magenta'
    elseif matches[3] == 'orange' then
        color = 'Orange'
    elseif matches[3] == 'brown' then
        color = 'DarkOrange'
    elseif matches[3] == 'cyan' then
        color = 'Cyan'
    elseif matches[3] == 'darkblue' then
        color = 'Darkblue'
    elseif matches[3] == 'darkRed' then
        color = 'DarkRed'
    elseif matches[3] == 'gold' then
        color = 'Golden'
    elseif matches[3] == 'purple' then
        color = 'Purple'
    elseif matches[3] == 'emerald' then
        color = 'Emerald'
    elseif matches[3] == 'orchid' then
        color = 'Orchid'
        end
        local font = 'mathrm'
        if matches[4] == 'bold' then
            font = 'mathbf'
        elseif matches[4] == 'italic' then
            font = 'mathit'
        elseif matches[4] == 'fun' then
            font = 'mathfrak'
        elseif matches[4] == 'arial' then
            font = 'mathrm'
        elseif matches[4] == 'emphasis' then
            font = 'emph'
        elseif matches[4] == 'math' then
            font = 'mathbb'
        elseif matches[4] == 'boldg' then
            font = 'boldsymbol'
        elseif matches[4] == 'roman' then
            font = 'texttt'
        end
        local size = '700'
        if matches[5] == 'small' then 
            size = '300'
        elseif matches[5] == 'larg' then
            size = '900'
 end
local url = 'http://latex.codecogs.com/png.latex?'..'\\dpi{'..size..'}%20\\huge%20\\'..font..'{{\\color{'..color..'}'..text..'}}'
local file = download_to_file(url,'avira.jpg')
if msg.to.type == 'channel' then
send_photo('channel#id'..msg.to.id,file,ok_cb,false)
end
end
end
return {
  patterns = {
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([^%s]+) (.*) ([Ss][Mm][Aa][Ll][Ll])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([^%s]+) (.*) ([Ll][Aa][Rr][Gg])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([^%s]+) (.*) (%d+)$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([^%s]+) ([Bb][Oo][Ll][Dd])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([^%s]+) ([Bb][Oo][Ll][Dd][Gg])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([^%s]+) ([Ee][Mm][Pp][Hh][Aa][Ss][Ii][Ss])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([^%s]+) ([Mm][Aa][Tt][Hh])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([^%s]+) ([Ii][Tt][Aa][Ll][Ii][Cc])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([^%s]+) ([Ff][Uu][Nn])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([^%s]+) ([Aa][Rr][Ii][Aa][Ll])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Gg][Oo][Ll][Dd])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Dd][Aa][Rr][Kk][Rr][Ee][Dd])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Pp][Uu][Rr][Pp][Ll][Ee])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Rr][Ee][Dd])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Bb][Ll][Aa][Cc][Kk])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Bb][Ll][Uu][Ee])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Gg][Rr][Ee][Ee][Nn])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Yy][Ee][Ll][Ll][Oo][Ww])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Pp][Ii][Nn][Kk])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Oo][Rr][Aa][Nn][Gg][Ee])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Bb][Rr][Oo][Ww][Nn])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Cc][Yy][Aa][Nn])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Dd][Aa][Rr][Kk][Bb][Ll][Uu][Ee])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Ee][Mm][Ee][Rr][Aa][Ll][Dd])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) (.*) ([Oo][Rr][Cc][Hh][Ii][Dd])$",
 "^[!/#]([Ii][Mm][Aa][Gg][Ee]) +(.*)$",
  },
  run = run,
  }
  end

-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\