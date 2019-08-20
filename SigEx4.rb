require 'ffi'
require "C:\\Users\\Andy\\Documents\\Ruby\\SigGem"

w = 600
h = 400

Sigil.slWindow(w,h,"Simple Shapes", 0)

Sigil.slSetBackColor(0,0,0)

while not Sigil.slShouldClose() 

	Sigil.slSetForeColor(255,0,0,255) #red
	Sigil.slTriangleFill(100,100,50,50)

	Sigil.slSetForeColor(0,255,0,255) #green
	Sigil.slRectangleFill(600 / 2, 400 / 2, 50,50)

	Sigil.slSetForeColor(0,0,255,255) #blue
	Sigil.slCircleFill(200,200,50,50)

	if Sigil.slGetKey(Sigil::SL_KEY_ESCAPE) 
		Sigil.slClose()
	end

	Sigil.slRender()
end

Sigil.slClose()