local function id_username(extra, success, result)
        if success == 1 then
 if result.username then
   Username = '@'..result.username
   else
   Username = 'Not Found'
   end
    		if result.phone then
	numberorg = string.sub(result.phone, 3)
   number = "0"..string.sub(numberorg, 0,6).."****"
else
   number = "Not Found"
   end
    local text = 'Name : '..(result.first_name or '')..' '..(result.last_name or '')..'\n'
               ..'UserName : '..Username..'\n'
               ..'ID : '..result.peer_id..'\n\n'
               ..'Phone Number : '..number

  send_msg(extra.receiver, text, ok_cb,  true)
  else
	send_msg(extra.receiver, extra.user..' Not Founf\n Check Target with !id ID',k_cb, false)
end 
end
-------------------------------------------
local function id_id(extra, success, result)  -- /info <ID> function
 if success == 1 then
 if result.username then
   Username = '@'..result.username
   else
   Username = 'Not Found'
   end
    		if result.phone then
	numberorg = string.sub(result.phone, 3)
   number = "0"..string.sub(numberorg, 0,6).."****"
else
   number = "Not Found"
   end
    local text = 'Name : '..(result.first_name or '')..' '..(result.last_name or '')..'\n'
               ..'UserName : '..Username..'\n'
               ..'ID : '..result.peer_id..'\n\n'
               ..'Phone Number : '..number

  send_msg(extra.receiver, text, ok_cb,  true)
  else
  send_msg(extra.receiver, 'ID Not Found!\nCheck Target With !id @username', ok_cb, false)
  end
end
local function id_reply(extra, success, result)-- (reply) /info  function
		if result.from.username then
		   Username = '@'..result.from.username
		   else
   Username = 'Not Found'
	 end
    		if result.from.phone then
	numberorg = string.sub(result.from.phone, 3)
   number = "0"..string.sub(numberorg, 0,6).."****"
else
   number = "Not Found"
   end
    local text = 'Name '..(result.from.first_name or '')..' '..(result.from.last_name or '')..'\n'
               ..'UserName : '..Username..'\n'
               ..'ID : '..result.from.peer_id..'\n\n'
               ..'Phone Number : '..number
               
  reply_msg(extra.Reply, text, ok_cb, false)
end

local function run(msg, matches)
if matches[1]:lower() == 'id' and not matches[2] then
  local receiver = get_receiver(msg)
  local Reply = msg.reply_id
  if msg.reply_id then
    msgr = get_message(msg.reply_id, id_reply, {receiver=receiver, Reply=Reply})
  else
  if msg.from.username then
   Username = '@'..msg.from.username
   else
   Username = 'Not Found'
end
   		if msg.from.phone then
	numberorg = string.sub(msg.from.phone, 3)
   number = "0"..string.sub(numberorg, 0,6).."****"
else
   number = "Not Found"
end

   local text = 'Name '..(msg.from.first_name or '')..' '..(msg.from.last_name or '')..'\n'
   local text = text..'UserName : '..Username..'\n'
   local text = text..'ID : '..msg.from.id..'\n'
   local text = text..'Phone Number : '..number..'\n'
    return reply_msg(msg['id'], text, ok_cb, true)
end
end
  if matches[1]:lower() == 'id' and matches[2] then
   local user = matches[2]
   local chat2 = msg.to.id
   local receiver = get_receiver(msg)
   if string.match(user, '^%d+$') then
	  user_info('user#id'..user, id_id, {receiver=receiver, user=user, text=text, chat2=chat2})
       elseif string.match(user, '^@.+$') then
      username = string.gsub(user, '@', '')
      msgr = resolve_username(username, id_username, {receiver=receiver, user=user, text=text, chat2=chat2})
   end
  end
end
return {
  description = 'Know your information or the info of a chat members.',
  usage = {
	'!id: Return your info and the chat info if you are in one.',
	'!id <id>: Return the id\'s of the <id>.',
	'!id @<user_name>: Return the member @<user_name> information from the current chat.',
  },
  patterns = {
	"^[/!]([Ii][Dd])$",
	"^[/!]([Ii][Dd]) (.*)$",

  },
  run = run
}