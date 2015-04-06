--testScene1.lua

local composer = require("composer")
local Library = require("Library")
local scene = composer.newScene()

function scene:create(event)
local background = display.newRect(0,0,_W*2,_H*2)
background:setFillColor(0.3,0.8,0.4)
end

scene:addEventListener("create",scene)

return scene


