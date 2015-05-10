------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : takePhoto_view.lua
-- Date : 2015/3/30
-- Update : 2015/4/8
-- Creater : Nobuyoshi Tanaka
-- Comment : 
-- 選択した画像を画面上に表示する。
------------------------------------------------------
module(...,package.seeall)


local function listener()
	local self = {}
	
	--画像を撮る
	function self.takePhoto(photoX,photoY,photoWidth,photoHeight)

		local function onComplete1( event )
		   local photo = event.target
		   if photo then
		   		photo.width ,photo.height = photoWidth , photoHeight
		   		photo.x , photo.y = photoX , photoY
		   		print( "photo w,h = " .. photo.width .. "," .. photo.height )
		   elseif photo == nil then

		   end
		end
		if media.hasSource( media.Camera ) then
		    media.capturePhoto( { listener=onComplete1 } )
		    print( media.Camera )
		else
		    native.showAlert( "Corona", "This device does not have a camera.", { "OK" } )
		end
	end

	--画像ファイルを開く
	function self.selectPhoto()
		local function onComplete2( event )
   			local photoAlbum = event.target
			if photoAlbum then
				print( "photo w,h = " .. photoAlbum.width .. "," .. photoAlbum.height )
				photoAlbum.x , photoAlbum.y = photoAlbum.width/2 ,photoAlbum.height/2
		    elseif photoAlbum == nil then

		    end
		end

		if media.hasSource( media.PhotoLibrary ) then
   			media.selectPhoto( { listener = onComplete2 , mediaSource = media.SavedPhotosAlbum , destination = { baseDir = system.TemporaryDirectory, filename = "image.jpg", type ="image"}  } )
		else
   			native.showAlert( "Corona", "This device does not have a photo library.", { "OK" } )
		end
	end



	return self

end


--インスタンス化
function new()
	return listener()
end
