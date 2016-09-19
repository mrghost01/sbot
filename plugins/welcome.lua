local function run(msg, matches)
local data = load_data(_config.moderation.data)
if matches[1] == 'set' and matches[2] == "welcome" and is_owner(msg) then
    if not is_owner(msg) then 
    return 'For Owners Only!'
end
data[tostring(msg.to.id)]['welcome_msg'] = matches[3]
        save_data(_config.moderation.data, data)
        return 'Group welcome Seted To :\n---------------\n'..matches[3]..'\n---------------\nTo display User name,username,group name,rules The format is set :\n[name] = Show name\n[rules] = Show Group Rules \n[group] = Group Nmae\n—-------------------------------\nexample : \n !set welcome salam [name]be goroohe [group] khosh amadid \n ghavanine gorooh: [rules]'
end
    if matches[1] == 'chat_add_user' then
      if not msg.service then
        return 
      end
      local receiver = get_receiver(msg)
	if is_banned(msg.action.user.id, msg.to.id) then
	        return
		end
		if is_gbanned(msg.action.user.id) then
            return
        end
local nicebekhodam = ''
	if data[tostring(msg.to.id)]['welcome_msg'] then
	local message = data[tostring(msg.to.id)]['welcome_msg']
	local name = ''
	   local hash = 'rank:variables'
		local value = redis:hget(hash, msg.action.user.id)
		 if  value then
		     	Usernames = value
		 elseif not value then
		    if msg.action.user.first_name then
                   Usernames = msg.action.user.first_name
		    else
                   Usernames = msg.action.user.last_name
		  end
		 end
if string.match(message, '[name]') then
        message = string.gsub(message, '[name]', Usernames)
end

	if string.match(message, '[group]') then
        local grouppp = ''
        if string.match(msg.to.print_name, '_') then
        grouppp = string.gsub(msg.to.print_name, '_', ' ')
        else grouppp = msg.to.print_name end
		message = string.gsub(message, '[group]',  grouppp)
	end

if string.match(message, '[rules]') then
  local data_catt = 'rules'
local rulesss = ''
  if not data[tostring(msg.to.id)][data_catt] then
	   rulesss = ''
  else
  rulesss = data[tostring(msg.to.id)][data_catt]
  end
  message = string.gsub(message, '[rules]',  rulesss)
end
	return message
	else
     return 'Hello '..(msg.action.user.first_name or msg.action.user.last_name)..'\nWelcome To  '.. string.gsub(msg.to.print_name, '_', ' ')..''
	 end
end
	    if matches[1] == 'chat_add_user_link' then
      if not msg.service then
        return 
      end
      local receiver = get_receiver(msg)
	if is_banned(msg.from.id, msg.to.id) then
	        return
		end
		if is_gbanned(msg.from.id) then
            return
        end
	if data[tostring(msg.to.id)]['welcome_msg'] then
	local message = data[tostring(msg.to.id)]['welcome_msg']
	local name = ''
	   local hash = 'rank:variables'
		local value = redis:hget(hash, msg.from.id)
		 if  value then
		     	name = value
		 elseif not value then
		    if msg.action.user.first_name then
                   name = msg.action.user.first_name
		    else
                   name = msg.action.user.last_name
		  end
		  end
	if string.match(message, '[name]') then
		message = string.gsub(message, '[name]', name)
	end

	if string.match(message, '[group]') then
        local grouppp = ''
        if string.match(msg.to.print_name, '_') then
        grouppp = string.gsub(msg.to.print_name, '_', ' ')
        else grouppp = msg.to.print_name end
		message = string.gsub(message, '[group]',  grouppp)
	end
	if string.match(message, '[rules]') then
	  local data_catt = 'rules'
	local rulessss = ''
	  if not data[tostring(msg.to.id)][data_catt] then
	   rulessss = ''
	  else
	  rulessss = data[tostring(msg.to.id)][data_catt]
end
	  message = string.gsub(message, '[rules]',  rulessss)
	end
	return message
else
    
     return 'Hello '..(msg.from.first_name or msg.from.last_name)..'\nWelcome To '.. string.gsub(msg.to.print_name, '_', ' ')..' '
	 end
end 
end


return {
  patterns = {
  "^[!/](set) (welcome) (.*)$",
    "^!!tgservice (chat_add_user)$",
	"^!!tgservice (chat_add_user_link)$",

  },
  run = run
}