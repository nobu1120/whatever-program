--testScene.lua

local composer = require("composer")
local Library = require("Library")
local scene = composer.newScene()
local group = display.newGroup()
function scene:create(event)


end

function scene:show(event)
	if event.phase == "will" then

	elseif event.phase == "did" then
		local option = 
				{
					effect = "fade",
					time = 100
				}

		composer.gotoScene("firstPage",option)
	end
end

function scene:hide(event)
	if event.phase == "began" then


	elseif event.phase == "did" then
		local background = display.newRect(group,0,0,_W*2,_H*2)
		background:setFillColor(0.4,0.1,0.2)		
	end
end

function scene:destroy(event)
	if event.phase == "began" then


	elseif event.phase == "did" then		
		display.remove(group)
		group = nil
	end
end

scene:addEventListener("create",scene)
scene:addEventListener("show",scene)
scene:addEventListener("hide",scene)
scene:addEventListener("destroy",scene)

return scene


