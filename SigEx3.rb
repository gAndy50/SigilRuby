require 'ffi'
require "C:\\Users\\Andy\\Documents\\Ruby\\SigGem"

w = 600
h = 400

Sigil.slWindow(w,h,"Simple Font Ex", 0)

f = Sigil.slLoadFont("arial.ttf") #replace with any font file you like

Sigil.slSetFont(f,20)

while not Sigil.slShouldClose() 

	Sigil.slSetTextAlign(Sigil::SL_ALIGN_CENTER)

	Sigil.slText(600 / 2,400 / 2,"Hello World")

	if Sigil.slGetKey(Sigil::SL_KEY_ESCAPE) 
		Sigil.slClose()
	end

	Sigil.slRender()
end

Sigil.slClose()