------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : firstPage_model.lua
-- Date : 2015/3/30
-- Update : 2015/4/6
-- Creater : Nobuyoshi Tanaka
------------------------------------------------------
local Library = require("Library")
local composer = require("composer")

--クラスの作成
local _M = {}

--データを取得する
function _M.new(id,name)
	local obj = {}
	obj.id = 1
	obj.name = "firstUser"
	obj.showData = function(self)
						local data = string.format("id = %d, name = %s", self.id, self.name)
						print( data )
					end
	return obj
end


--ボタンを作成(押されると、各ページ移動(touch event))
--ボタンの表示はここでは行わない
function _M.createBtn(str,url)

	local group = display.newGroup()

	local btn = display.newRect(group,0,0,300,150)
	btn:setFillColor(0.3,0.5,0.7)

	local btnText = display.newText(group,str,0,0,nil,40)

	btn.x , btn.y = btnText.x , btnText.y



	local function listener(event)
		if event.phase == "began" then
			btn:setFillColor(0.3,0.6,0.1)

		elseif event.phase == "ended" then 
			btn:setFillColor(0.3,0.5,0.7)

			if url then
			local option = 
			{
				effect = "fade",
				time = 10	
			}

			composer.gotoScene(url,option)
			end
		end
		return true
	end
	btn:addEventListener("touch",listener)
	return group
end

--データ表示
function _M.showData()
	local userData = _M.new()
	userData : showData()
end


return _M
