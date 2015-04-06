------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : takePhoto.lua
-- Date : 2015/3/30
-- Update : 2015/3/30
-- Creater : Nobuyoshi Tanaka
-- Comment : 
-- モバイル端末で画像を撮る。
------------------------------------------------------

local function onComplete( event )
   local photo = event.target
   print( "photo w,h = " .. photo.width .. "," .. photo.height )
end

if media.hasSource( media.PhotoLibrary ) then
   media.selectPhoto( { mediaSource=media.SavedPhotosAlbum, listener=onComplete } )
else
   native.showAlert( "Corona", "This device does not have a photo library.", { "OK" } )
end
