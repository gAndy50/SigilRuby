require 'ffi'
require "C:\\Users\\Andy\\Documents\\Ruby\\SigGem"

w = 600
h = 400

Sigil.slWindow(w,h,"Hello World - Click X or ESC to close", 0)

while not Sigil.slShouldClose() 
	if Sigil.slGetKey(Sigil::SL_KEY_ESCAPE) 
		Sigil.slClose()
	end

	Sigil.slRender()
end

Sigil.slClose()