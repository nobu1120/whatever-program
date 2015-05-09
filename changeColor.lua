--testScene.lua

local composer = require("composer")
local Library = require("Library")


-- View
local firstPage_view = require("firstPage_view")

local Btn = firstPage_view.new()

local scene = composer.newScene()
local group = display.newGroup()
function scene:create(event)
	local sceneGroup = self.view
	local group = display.newGroup()
	local background = display.newRect(sceneGroup,0,0,_W*2,_H*2)
	background:setFillColor(0.4,0.1,0.2)


end

function scene:show(event)
	if event.phase == "will" then

	elseif event.phase == "did" then

	end
end

function scene:hide(event)
	if event.phase == "began" then


	elseif event.phase == "did" then
	
	end
end

function scene:destroy(event)
	if event.phase == "began" then


	elseif event.phase == "did" then



	end
end

scene:addEventListener("create",scene)
scene:addEventListener("show",scene)
scene:addEventListener("hide",scene)
scene:addEventListener("destroy",scene)

return scene


