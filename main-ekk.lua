VERSION = "EKK PokéNav Minus 1.1"

-- buffer = console:createBuffer("Exports")
wd = nil

function start()
    console:log("\nCalling Roxanne...")
    wd = debug.getinfo(start).source:match("@?(.*[/\\])") or ""
    dofile(wd .. "src/constants-ekk.lua")
    dofile(wd .. "src/network.lua")
    -- callbacks:add("frame", update)
	-- callbacks:add("reset", updateGame)
	-- callbacks:add("start", updateGame)
    -- updateGame()
    setupServer()
    console:log("\nThe line is connected. You're now in contact!")
end

start()