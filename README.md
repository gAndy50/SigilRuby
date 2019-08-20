# SigilRuby
This is a wrapper of Sigil for the Ruby programming language. Sigil is a simple cross-platform multi-media library. It can be used for rapid prototyping or small games. Included in this repo is the SigilRuby wrapper and a few example programs.

# Example

```Ruby
require 'ffi'
require "C:\\*\\*\\*\\Ruby\\SigGem" #path to where SigiGem.rb is, you will need to provide the full path when using Windows
#actual location in example covered by '*'s for security reasons, obviously!

w = 600 #width
h = 400 #height

Sigil.slWindow(w,h,"Hello World - Click X or ESC to close", 0)

while not Sigil.slShouldClose() 
	if Sigil.slGetKey(Sigil::SL_KEY_ESCAPE) 
		Sigil.slClose()
	end

	Sigil.slRender()
end

Sigil.slClose()
```

# License
This software is provided as-is. There is no warranty for this software. You use this software at your own risk. You may not hold the developer or the Ruby community responsible for any mis-happenings with this software. You may use this wrapper to write your
own Ruby programs using SigilRuby. Programs you create with SigilRuby are yours to distribute as you please. 

# Links
[Sigil](http://www.libsigil.com/)
[Patreon](https://www.patreon.com/CrazyVikingGamer)

Thanks for using SigilRuby!
