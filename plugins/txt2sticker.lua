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
if matches[1]:lower() == 'sticker' then
        local text = URL.escape(matches[2])
        local color = 'red'
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
local file = download_to_file(url,'avira.webp')
if msg.to.type == 'channel' then
send_document('channel#id'..msg.to.id,file,ok_cb,false)
end
end
end
return {
  patterns = {
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([^%s]+) (.*) ([Ss][Mm][Aa][Ll][Ll])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([^%s]+) (.*) ([Ll][Aa][Rr][Gg])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([^%s]+) (.*) (%d+)$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([^%s]+) ([Bb][Oo][Ll][Dd])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([^%s]+) ([Bb][Oo][Ll][Dd][Gg])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([^%s]+) ([Ee][Mm][Pp][Hh][Aa][Ss][Ii][Ss])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([^%s]+) ([Mm][Aa][Tt][Hh])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([^%s]+) ([Ii][Tt][Aa][Ll][Ii][Cc])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([^%s]+) ([Ff][Uu][Nn])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([^%s]+) ([Aa][Rr][Ii][Aa][Ll])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Gg][Oo][Ll][Dd])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Dd][Aa][Rr][Kk][Rr][Ee][Dd])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Pp][Uu][Rr][Pp][Ll][Ee])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Rr][Ee][Dd])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Bb][Ll][Aa][Cc][Kk])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Bb][Ll][Uu][Ee])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Gg][Rr][Ee][Ee][Nn])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Yy][Ee][Ll][Ll][Oo][Ww])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Pp][Ii][Nn][Kk])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Oo][Rr][Aa][Nn][Gg][Ee])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Bb][Rr][Oo][Ww][Nn])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Cc][Yy][Aa][Nn])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Dd][Aa][Rr][Kk][Bb][Ll][Uu][Ee])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Ee][Mm][Ee][Rr][Aa][Ll][Dd])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) (.*) ([Oo][Rr][Cc][Hh][Ii][Dd])$",
 "^[!/#]([Ss][Tt][Ii][Cc][Kk][Ee][Rr]) +(.*)$",
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