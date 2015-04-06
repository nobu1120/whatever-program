------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : readPhoto_mobile.lua
-- Date : 2015/3/30
-- Update : 2015/3/30
-- Creater : Nobuyoshi Tanaka
-- Comment : 
-- 端末に保存されている画像を画面上に表示する。
------------------------------------------------------


local path = system.pathForFile( "photofile", system.DocumentsDirectory )
local PhotoFile = io.open( path )
	if PhotoFile then
		print( "file exist" )
		print( PhotoFile )
		io.close( PhotoFile )
	else
		print( "file not exist" )
		PhotoFile = io.open( path , "w" )
		io.close( PhotoFile )
	end