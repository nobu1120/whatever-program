------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : firstPage_view.lua
-- Date : 2015/3/30
-- Update : 2015/4/6
-- Creater : Nobuyoshi Tanaka
------------------------------------------------------

--ライブラリ参照
local Library = require ( "Library" )
local widget = require("widget")
local composer = require("composer")

-- Model
local firstPage_model = require("firstPage_model")

local _M = {}

--ボタン表示(タッチによりページ移動)
function _M.showBtn()

	local Btn1 = firstPage_model.createBtn("Camera","testScene")
	Btn1.x , Btn1.y = 300,300

	local Btn2 = firstPage_model.createBtn("Album","testScene1")
	Btn2.x , Btn2.y = 300,500

	local Btn3 = firstPage_model.createBtn("PhotoFlame","testScene2")
	Btn3.x , Btn3.y = 300,700


end


return _M



