------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : main.lua
-- Date : 2015/3/30
-- Update : 2015/4/6
-- Creater : Nobuyoshi Tanaka
-- Comment : 
-- 選択した画像を画面上に表示する。
------------------------------------------------------

--ライブラリ参照
local Library = require("Library")
local composer = require("composer")

-- Model 
local firstPage_model = require("firstPage_model")

-- View
local firstPage_view = require("firstPage_view")


local scene =composer.gotoScene("firstPage",option)




