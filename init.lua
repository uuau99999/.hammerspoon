require("input-source")

hs.hotkey.bind({ "alt" }, "1", function()
	hs.application.launchOrFocus("Google Chrome")
end)
hs.hotkey.bind({ "alt" }, "2", function()
	hs.application.launchOrFocus("iTerm")
end)
hs.hotkey.bind({ "alt" }, "3", function()
	hs.application.launchOrFocus("企业微信")
end)
hs.hotkey.bind({ "alt" }, "4", function()
	hs.application.launchOrFocus("QQMusic")
end)

local function reloadConfig(files)
	local doReload = false
	for _, file in pairs(files) do
		if file:sub(-4) == ".lua" then
			doReload = true
		end
	end
	if doReload then
		hs.reload()
	end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")
