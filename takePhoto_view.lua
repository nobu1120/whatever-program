------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : takePhoto_view.lua
-- Date : 2015/3/30
-- Update : 2015/4/4
-- Creater : Nobuyoshi Tanaka
-- Comment : 
-- 選択した画像を画面上に表示する。
------------------------------------------------------

--ライブラリ参照
local Library = require ( "Library" )

local group = display.newGroup()

--背景設定
local background = display.newRect(0,0,_W*2,_H*2)
background : setFillColor (0.3,0.5,0.7)