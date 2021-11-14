AddEventHandler( "playerConnecting", function(name, setReason, deferrals)
	deferrals.defer()
    deferrals.update("Checking Player Information. Please Wait.")
    local _source = source
    local steamid  = false
    local license  = false
    local discord  = false
    local xbl      = false
    local liveid   = false
    local ip       = false

    for k,v in pairs(GetPlayerIdentifiers(_source))do   
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
            steamid = v
        elseif string.sub(v, 1, string.len("license:")) == "license:" then
            license = v
        elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
            xbl  = v
        elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
            ip = v
        elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
            discord = v
        elseif string.sub(v, 1, string.len("live:")) == "live:" then
            liveid = v
        end
    end
    if not steamid or not license or not discord then
        deferrals.done("[Identifier Not Found] Buka steam dan discord terlebih dahulu (Pastikan sudah mengambil role Citizen), selanjutnya lalu buka FiveM")
    else
        PerformHttpRequest('https://api.vercityrp.id/api/ban-list?steam=' .. steamid..'&license='..license..'&discord='..discord, function(statusCode, response, headers)
            if response then
                local userinfo = json.decode(response)
                if userinfo['status'] == "200" then
                    deferrals.done("Ban Global Indonesian Reason: " .. userinfo['message'])
                else
                    deferrals.done()
                end
            end
        end)
    end
end)