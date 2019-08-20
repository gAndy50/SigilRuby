require 'ffi'
require "C:\\Users\\Andy\\Documents\\Ruby\\SigGem"

w = 600
h = 400
Sigil.slWindow(w,h,"Simple Texture Ex", 0)

t = Sigil.slLoadTexture("binary.jpg") #replace with any image file you like

while not Sigil.slShouldClose() 
	if Sigil.slGetKey(Sigil::SL_KEY_ESCAPE) 
		Sigil.slClose()
	end

	Sigil.slSprite(t,100,100,100,100)

	Sigil.slRender()
end

Sigil.slClose()