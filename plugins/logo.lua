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
    local receiver = get_receiver(msg)
    local site = matches[2]
	
if matches[1] == 'logo>' then
	local url = "http://logo.clearbit.com/"..site.."?size=500&greyscale=true"
	local randomd = "./data/logo/Avira.jpg"
		local file = download_to_file(url,randomd)
	local cb_extra = {file_path=file}
		send_photo(receiver, file, rmtmp_cb, cb_extra)
end

if matches[1] == 'logo' then
	local url = "http://logo.clearbit.com/"..site.."?size=800"
	local randomd = "./data/logo/Avira.jpg"
	local file = download_to_file(url,randomd)
	local cb_extra = {file_path=file}
    send_photo(receiver, file, rmtmp_cb, cb_extra)
end
end

return {
  patterns = {
		"^[#!/]([Ll][Oo][Gg][Oo]>) (.*)$",
		"^[#!/]([Ll][Oo][Gg][Oo]) (.*)$",
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