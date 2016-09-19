local function pre_process(msg)
 local timetoexpire = 'Not Setted!'
 local expiretime = redis:hget ('expiretime', get_receiver(msg))
 local now = tonumber(os.time())
 if expiretime then    
  timetoexpire = math.floor((tonumber(expiretime) - tonumber(now)) / 86400) + 1
  if tonumber("0") > tonumber(timetoexpire) and not is_sudo(msg) then
  if msg.text:match('/') and msg.text:match('!') and msg.text:match('#') and msg.text:match('(.*)') then
   return send_large_msg(get_receiver(msg), 'Test')
  else
   return
  end
 end
 if tonumber(timetoexpire) == 0 then
  if redis:hget('expires0',msg.to.id) then return msg end
  send_large_msg(get_receiver(msg), 'Group Has Been Expiered!\nAsk @MohammadArak For Charging Your Group\n')
  redis:hset('expires0',msg.to.id,'5')
 end
 if tonumber(timetoexpire) == 1 then
  if redis:hget('expires1',msg.to.id) then return msg end
  send_large_msg(get_receiver(msg), 'You Have 1 Day to Charge Your Group Please Ask Admin\n')
  redis:hset('expires1',msg.to.id,'5')
 end
 if tonumber(timetoexpire) == 2 then
  if redis:hget('expires2',msg.to.id) then return msg end
  send_large_msg(get_receiver(msg), 'You Have 2 Day to Charge Your Group Please Ask Admin\n')
  redis:hset('expires2',msg.to.id,'5')
 end
 if tonumber(timetoexpire) == 3 then
  if redis:hget('expires3',msg.to.id) then return msg end
  send_large_msg(get_receiver(msg), 'You Have 3 Day to Charge Your Group Please Ask Admin\n')
  redis:hset('expires3',msg.to.id,'5')
 end
end
return msg
end
function run(msg, matches)
 if matches[1]:lower() == 'setexpire' then
  if not is_admin1(msg) then return end
  local time = os.time()
  local buytime = tonumber(os.time())
  local timeexpire = tonumber(buytime) + (tonumber(matches[2]) * 86400)
  redis:hset('expiretime',get_receiver(msg),timeexpire)
  local text = "Group Has Been Charged\nNew Expire Time : "..matches[2]
     local text = string.gsub(text,'0','0⃣')
  local text = string.gsub(text,'1','1⃣')
local text = string.gsub(text,'2','2⃣')
  local text = string.gsub(text,'3','3⃣')
local text = string.gsub(text,'4','4⃣')
  local text = string.gsub(text,'5','5⃣')
local text = string.gsub(text,'6','6⃣')
  local text = string.gsub(text,'7','7⃣')
local text = string.gsub(text,'8','8⃣')
  local text = string.gsub(text,'9','9⃣')
  return text
 end
 if matches[1]:lower() == 'expiretime' then

  local expiretime = redis:hget ('expiretime', get_receiver(msg))
  if not expiretime then return 'Not Setted!' else
   local now = tonumber(os.time())
   local text = math.floor((tonumber(expiretime) - tonumber(now)) / 86400) + 1
   local text = string.gsub(text,'0','0⃣')
  local text = string.gsub(text,'1','1⃣')
local text = string.gsub(text,'2','2⃣')
  local text = string.gsub(text,'3','3⃣')
local text = string.gsub(text,'4','4⃣')
  local text = string.gsub(text,'5','5⃣')
local text = string.gsub(text,'6','6⃣')
  local text = string.gsub(text,'7','7⃣')
local text = string.gsub(text,'8','8⃣')
  local text = string.gsub(text,'9','9⃣')
   return "Expire Time (Day) : "..text
  end
 end

end

return {
  patterns = {
    "^[!/]([Ss]etexpire) (.*)$",
 "^[!/]([Ee]xpiretime)$",
  },
  run = run,
  pre_process = pre_process
}