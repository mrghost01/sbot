local function run(msg, matches)
if is_owner(msg) then
if matches[1]:lower() == 'maxwarn' then

if matches[2] == 'link' and matches[3] then
local flood_max = 'maxwarn:link:'..msg.to.id
if tonumber(matches[3]) < 1 or tonumber(matches[3]) > 5 then
return "#Error\nWrong number,Range Number for Link if [1-5]"
else
redis:set(flood_max, tonumber(matches[3]))
return "Max Link Warning Was Been Changed To "..matches[3]
end

end

--[[if matches[2] == 'english' and matches[3] then
local flood_max = 'maxwarn:english:'..msg.to.id
if tonumber(matches[3]) < 1 or tonumber(matches[3]) > 5 then
return "#Error\nWrong number,Range Number for English if [1-5]"
else
redis:set(flood_max, tonumber(matches[3]))
return "Max English Warning Was Been Changed To "..matches[3]
end

end
end]]

if matches[2] == 'tag' and matches[3] then
local flood_max = 'maxwarn:tag:'..msg.to.id
if tonumber(matches[3]) < 1 or tonumber(matches[3]) > 5 then
return "#Error\nWrong number,Range Number for Tag if [1-5]"
else
redis:set(flood_max, tonumber(matches[3]))
return "Max Tag Warning Was Been Changed To "..matches[3]
end

end

if matches[2] == 'username' and matches[3] then
local flood_max = 'maxwarn:username:'..msg.to.id
if tonumber(matches[3]) < 1 or tonumber(matches[3]) > 5 then
return "#Error\nWrong number,Range Number for Username if [1-5]"
else
redis:set(flood_max, tonumber(matches[3]))
return "Max Username Warning Was Been Changed To "..matches[3]
end

end

if matches[2] == 'reply' and matches[3] then
local flood_max = 'maxwarn:reply:'..msg.to.id
if tonumber(matches[3]) < 1 or tonumber(matches[3]) > 5 then
return "#Error\nWrong number,Range Number for Reply if [1-5]"
else
redis:set(flood_max, tonumber(matches[3]))
return "Max Reply Warning Was Been Changed To "..matches[3]
end

end

if matches[2] == 'forward' and matches[3] then
local flood_max = 'maxwarn:fwd:'..msg.to.id
if tonumber(matches[3]) < 1 or tonumber(matches[3]) > 5 then
return "#Error\nWrong number,Range Number for Forward if [1-5]"
else
redis:set(flood_max, tonumber(matches[3]))
return "Max Forward Warning Was Been Changed To "..matches[3]
end

end

if matches[2] == 'arabic' and matches[3] then
local flood_max = 'maxwarn:arabic:'..msg.to.id
if tonumber(matches[3]) < 1 or tonumber(matches[3]) > 5 then
return "#Error\nWrong number,Range Number for Arabic if [1-5]"
else
redis:set(flood_max, tonumber(matches[3]))
return "Max Arabic Warning Was Been Changed To "..matches[3]
end

end

--[[if matches[2] == 'face' and matches[3] then
local flood_max = 'maxwarn:face:'..msg.to.id
if tonumber(matches[3]) < 1 or tonumber(matches[3]) > 5 then
return "#Error\nWrong number,Range Number for EmojiFace if [1-5]"
else
redis:set(flood_max, tonumber(matches[3]))
return "Max EmojiFace Warning Was Been Changed To "..matches[3]
end

end]]

end

if matches[1]:lower() == 'remwarn' then
local face_redis = 'face_lock:'..msg.to.id..':'..matches[2]
redis:set(face_redis, 0)-- Reset the Counter
local ar_redis = 'arabic_lock:'..msg.to.id..':'..matches[2]
redis:set(ar_redis, 0)-- Reset the Counter
local fwd_redis = 'forward_lock:'..msg.to.id..':'..matches[2]
redis:set(fwd_redis, 0)-- Reset the Counter
local reply_redis = 'reply_lock:'..msg.to.id..':'..matches[2]
redis:set(reply_redis, 0)-- Reset the Counter
local username_hash = 'username::'..msg.to.id..':'..matches[2]
redis:set(username_hash, 0)-- Reset the Counter
local tag_hash = 'tag_user:'..msg.to.id..':'..matches[2]
redis:set(tag_hash, 0)-- Reset the Counter
local english_hash = 'english_user:'..msg.to.id..':'..matches[2]
redis:set(english_hash, 0)-- Reset the Counter
local linkhash = 'linkuser:'..msg.to.id..':'..matches[2]
redis:set(linkhash, 0)-- Reset the Counter
reply_msg(msg.id, 'User Warnings ['..matches[2]..'] Has Been Reseted By '..msg.from.first_name..' ['..msg.from.id..'] !', ok_cb, false)
end

end
end


return {
  patterns = {
	"^[!/#]([Mm][Aa][Xx][Ww][Aa][Rr][Nn]) (.*) (%d+)$",
	"^[!/#]([Rr][Ee][Mm][Ww][Aa][Rr][Nn]) (%d+)$"
  },
  run = run,
}