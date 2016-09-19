-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\

local function history(extra, suc, result)
for i=1, #result do
delete_msg(result[i].id, ok_cb, false)
end
if tonumber(extra.con) == #result then
send_msg(extra.chatid, ''..#result..' Messages Was Been Deleted 🗑', ok_cb, false)
else
send_msg(extra.chatid, 'All Of The Messages Deleted!', ok_cb, false)
end
end
local function run(msg, matches)
if matches[1] == 'msgrem' and is_momod(msg) then
            if msg.to.type == 'channel' then
            if tonumber(matches[2]) > 99 or tonumber(matches[2]) < 1 then
            return "Wrong Number"
            end
            get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
        else
                         return "Only For Supergroups"
        end
else
return "only for moderators"
end
end
return {
    patterns = {
        '^[!/#]([Mm][Ss][Gg][Rr][Ee][Mm]) (%d*)$'
    },
    run = run
}

-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\
