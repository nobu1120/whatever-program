------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : takePhoto_model.lua
-- Date : 2015/3/30
-- Update : 2015/4/4
-- Creater : Nobuyoshi Tanaka
-- Comment : 
-- モバイル端末で画像を撮る。
------------------------------------------------------
local _M = {}

--モバイル端末で画像を撮る
local function listener ()
	local function onComplete( event )
	   local photo = event.target
	   if photo then
	   		print( "photo w,h = " .. photo.width .. "," .. photo.height )
	   elseif photo == nil then
	    	media.hasSource = nil
	   end
	end
	if media.hasSource( media.Camera ) then
	    media.capturePhoto( { listener=onComplete } )
	    print( media.Camera )
	else
	    native.showAlert( "Corona", "This device does not have a camera.", { "OK" } )
	end

end


--インスタンス化
function _M.new()
	local group = display.newGroup()
	local func  = listener ( group )
	return group , func 
end

return _M
