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
 local function save_file(name, text)
    local file = io.open("./data/file/"..name, "w")
    file:write(text)
    file:flush()
    file:close()
end   
function run(msg, matches)
  if matches[1] == "file" and is_momod(msg) then
 
         local name = matches[2]
        local text = matches[3]
        return save_file(name, text)
    end
   end
return {
  patterns = {
  "^[!/#]([Ff][Ii][Ll][Ee]) ([^%s]+) (.+)$"

  },
  run = run
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
