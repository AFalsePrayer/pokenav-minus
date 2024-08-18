VERSION = "EK PokéNav Minus 1.2"

-- buffer = console:createBuffer("Exports")
wd = nil

function start()
    console:log("\nCalling Roxanne...")
    wd = debug.getinfo(start).source:match("@?(.*[/\\])") or ""
    dofile(wd .. "src/abilities-ek.lua")
    dofile(wd .. "src/constants.lua")
    dofile(wd .. "src/network.lua")
    -- callbacks:add("frame", update)
	-- callbacks:add("reset", updateGame)
	-- callbacks:add("start", updateGame)
    -- updateGame()
    setupServer()
    console:log("\nThe line is connected. Sync up!")
end

start()