------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : firstPage.lua
-- Date : 2015/3/30
-- Update : 2015/4/6
-- Creater : Nobuyoshi Tanaka
--
-- Comment ] Top page
------------------------------------------------------
local composer = require("composer")
local scene = composer.newScene()

-- Model
local firstPage_model = require("firstPage_model")

--View
local firstPage_view = require("firstPage_view")

--storyboardのcreateSceneに相当
--シーンのビューが存在しない場合に呼ばれる。
function scene:create(event)
	local sceneGroup = self.view
	local btn = firstPage_view.showBtn()


end

function scene:show(event)
	local sceneGroup = self.view
	local phase = event.phase

	--storyboardのwillEnterSceneに相当
	--シーンがアクティブになる前に呼ばれる。
	--遷移エフェクトがある場合はそれの前。
	if(phase == "will") then
			--ボタン表示

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
