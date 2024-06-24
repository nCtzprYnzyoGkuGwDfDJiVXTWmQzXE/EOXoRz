local old
old = hookfunction(game.HttpGet, function(self, url)
    if type(url) == "string" then
        if string.match(url, "xk5ng.github.io/WL") or string.match(url, "xk5ng.github.io/Secret") or string.match(url, "xk5ng.github.io/SBTest") or string.match(url, "xk5ng.github.io/WhiteListTest") then
            return game:HttpGet("https://raw.githubusercontent.com/nCtzprYnzyoGkuGwDfDJiVXTWmQzXE/EOXoRz/main/Whitelisted.lua")
        end
        if string.match(url, "xk5ng.github.io/encrypt") then
            return game:HttpGet("https://raw.githubusercontent.com/nCtzprYnzyoGkuGwDfDJiVXTWmQzXE/EOXoRz/main/Encrypt.lua")
        end
        if string.match(url, "xk5ng.github.io/Annc") then
            return game:HttpGet("https://raw.githubusercontent.com/nCtzprYnzyoGkuGwDfDJiVXTWmQzXE/EOXoRz/main/Announce.lua")
        end
        if string.match(url, "xk5ng.github.io/Blacklisted") then
            return game:HttpGet("https://raw.githubusercontent.com/nCtzprYnzyoGkuGwDfDJiVXTWmQzXE/EOXoRz/main/Blacklisted.lua")
        end
        if string.match(url, "xk5ng.github.io/Notify") then
            return game:HttpGet("https://raw.githubusercontent.com/nCtzprYnzyoGkuGwDfDJiVXTWmQzXE/EOXoRz/main/Notify.lua")
        end
        if string.match(url, "xk5ng.github.io/alert") then
            return game:HttpGet("https://raw.githubusercontent.com/nCtzprYnzyoGkuGwDfDJiVXTWmQzXE/EOXoRz/main/Alert.lua")
        end
        if string.match(url, "xk5ng.github.io/") then
            print(url)
            return game:HttpGet("https://raw.githubusercontent.com/nCtzprYnzyoGkuGwDfDJiVXTWmQzXE/EOXoRz/main/Status.lua")
        end
    end
    return old(self, url)
end)

local old = http_request
http_request = function(x)
	if string.find(x.Url, "webhook") then
	warn(x.Url)
	return
	end
	return old(x)
end

local old = http.request
http.request = function(x)
	if string.find(x.Url, "webhook") then
	warn(x.Url)
	return
	end
	return old(x)
end

setreadonly(syn, false)
local old = syn.request
syn.request = function(x)
	if string.find(x.Url, "webhook") then
	warn(x.Url)
	return
	end
	return old(x)
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/nCtzprYnzyoGkuGwDfDJiVXTWmQzXE/EOXoRz/main/Stand.lua"))()
