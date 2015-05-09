------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : firstPage.lua
-- Date : 2015/3/30
-- Update : 2015/4/6
-- Creater : Nobuyoshi Tanaka
--
-- Comment : Top page
------------------------------------------------------
local composer = require("composer")
local scene = composer.newScene()

-- Model
-- local firstPage_model = require("firstPage_model")

--View
local firstPage_view = require("firstPage_view")


local Btn = firstPage_view.new()

--storyboardのcreateSceneに相当
--シーンのビューが存在しない場合に呼ばれる。
function scene:create(event)

	local sceneGroup = self.view
	local background = display.newRect(sceneGroup,0,0,_W*2,_H*2)
	background:setFillColor(0.2,0.9,0.7)

	--ページ遷移するボタン作成
	--  moveSceneBtn       str(Btn)            url                   option                  X    Y
	Btn.moveSceneBtn( "changeColor" , "changeColor" , { effect = "fade" , time = 1000} , 300 , 500)
	Btn.moveSceneBtn( "camera" , "camera" , { effect = "fade" , time = 100} , 300 , 700)


end

function scene:show(event)
	local sceneGroup = self.view
	local phase = event.phase

	--storyboardのwillEnterSceneに相当
	--シーンがアクティブになる前に呼ばれる。
	--遷移エフェクトがある場合はそれの前。
	if(phase == "will") then





	--storyboardのenterSceneに相当
	--シーンがアクティブになった時に呼ばれる。
	--遷移エフェクトがある場合はそれの後。
	elseif(phase == "did") then
	





	end
end

function scene:hide(event)
	local sceneGroup = self.view
	local phase = event.phase

	--storyboardのexitSceneに相当
	--シーンが非アクティブになる前に呼ばれる。
	--遷移エフェクトがある場合はそれの前。
	if(phase == "will") then

	--storyboardのdidExitSceneに相当
	--シーンが非アクティブになった時に呼ばれる。
	--遷移エフェクトがある場合はそれの後。
	elseif(phase == "did") then

	end
end

--storyboardのdestroySceneに相当
--シーンのビューが削除される前に呼ばれる。
function scene:destroy(event)
	local sceneGroup = self.view

end

scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy", scene)

return scene
