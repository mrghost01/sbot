-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\

local function run(msg, matches)
	if matches[1]:lower() == 'aparat' then
		if is_momod(msg) then
		local url = http.request('http://www.aparat.com/etc/api/videoBySearch/text/'..URL.escape(matches[2]))
		local jdat = json:decode(url)

		local items = jdat.videobysearch
		text = 'Searching Result : \n'
		for i = 1, #items do
		text = text..'\n'..i..'- '..items[i].title..'  -  Visit Count : '..items[i].visit_cnt..'\n    Link : http://aparat.com/v/'..items[i].uid
	end
	end
		text = text..''
		return text
	end
end

return {
   patterns = {
     "^[/#!]([Aa][Pp][Aa][Rr][Aa][Tt]) (.*)$",
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
