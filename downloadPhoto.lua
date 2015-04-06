------------------------------------------------------
-- ProjectName : SendPhotoFlame
-- Filename : downloadPhoto.lua
-- Date : 2015/3/30
-- Update : 2015/3/30
-- Creater : Nobuyoshi Tanaka
-- Comment : 
-- サーバーに保存されている画像を画面上に表示する。
------------------------------------------------------

--サーバーから画像をダウンロードし、保存する

local function networkListener( event )
    if ( event.isError ) then
        print ( "Network error - download failed" )
    else
        event.target.alpha = 0
        transition.to( event.target, { alpha = 1.0 } )
    end

    print ( "event.response.fullPath: ", event.response.fullPath )
    print ( "event.response.filename: ", event.response.filename )
    print ( "event.response.baseDirectory: ", event.response.baseDirectory )
end

display.loadRemoteImage( "http://localhost:8888/MyPicture/1-37f22.jpg", "POST", networkListener,"1-37f22.jpg", system.TemporaryDirectory, 300, 600 )