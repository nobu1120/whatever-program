------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : takePhoto.lua
-- Date : 2015/3/30
-- Update : 2015/4/8
-- Creater : Nobuyoshi Tanaka
-- Comment : 
-- 選択した画像を画面上に表示する。
------------------------------------------------------

-- camera.lua

-- ownLibrary
local Library = require("Library")

-- library
local composer = require("composer")

-- View
local camera_view = require("camera_view")

-- カメラインスタンス作成
local camera = camera_view.new()

-----------------------------------------
----
---- Comment: カメラを起動するシーン
----
-----------------------------------------

local scene = composer.newScene()


function scene:create(event)

end

function scene:show(event)

	if event.phase == "will" then

	elseif event.phase == "did" then 

	camera.selectPhoto(_W/2,_H/2,_W,_H)

	end

end

scene:addEventListener("create",scene)

scene:addEventListener("show",scene)

return scene

