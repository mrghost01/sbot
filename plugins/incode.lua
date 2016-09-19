local function run(msg,matches)
  if matches[1] == 'incode' then
    local text = matches[2]
    local cmd = io.popen('echo '..text..' | base64')
    local result = cmd:read('*all')
    cmd:close()
    return result
  end
  if matches[1] == 'pm' then
    local text = matches[2]
    local cmd = io.popen('echo '..text..' | base64 -d')
    local result = cmd:read('*all')
    cmd:close()
    send_large_msg("user#id"..matches[3],result)
else
    
        send_text("user#id"..matches[3],matches[2])
end
end
return {
  patterns = {
    "^[!/#](incode) (.*)$",
    "^[#!/](pm) (.*) (%d+)$",

    },
  run = run
}
