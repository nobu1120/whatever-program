------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : firstPage_view.lua
-- Date : 2015/3/30
-- Update : 2015/4/6
-- Creater : Nobuyoshi Tanaka
------------------------------------------------------
module(...,package.seeall)

--ライブラリ参照
local Library = require ( "Library" )
local composer = require("composer")

-- Model
-- local firstPage_model = require("firstPage_model")


local function listener()
	local self = {}

	-- touch eventによりイベントによって発火
	--(composer.gotoScene(url)により次のシーンに移動)
	function self.moveSceneBtn(str,url,option,X,Y)

		local group = display.newGroup()


		local btn = display.newRect(group,0,0,300,150)
		btn:setFillColor(0.3,0.5,0.7)

		local btnText = display.newText(group,str,0,0,nil,40)
		btnText.x , btnText.y = X , Y
		btn.x ,btn.y = X , Y


		local function touchListener(event)
			if event.phase == "began" then
				btn:setFillColor(0.3,0.6,0.1)

			elseif event.phase == "ended" then 
				btn:setFillColor(0.3,0.5,0.7)

				composer.gotoScene(url,option)
			end
			return true
		end
		btn:addEventListener("touch",touchListener)
	end

	return self
end

function new()
	return listener()
end



