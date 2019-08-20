###################################
#Sigil Ruby						  #
#Written By Andy P. (Icy_Viking)  #
#Icy Viking Games 				  #
#Ruby wrapper for sigil           #
################################### 
require 'ffi'

module Sigil
	extend FFI::Library
	#Load the Library 
	#Note on Windows you will need to provide the full path to sigil.dll
	ffi_lib "C:\\Users\\Andy\\Documents\\Ruby\\sigil.dll"

	#Sigil constants
	SL_ALIGN_CENTER = 0
	SL_ALIGN_RIGHT = 1
	SL_ALIGN_LEFT = 2

	#Sigi keys
	SL_KEY_ESCAPE = 256
	SL_KEY_ENTER = 257
	SL_KEY_TAB = 258
	SL_KEY_BACKSPACE = 259
	SL_KEY_INSERT = 260
	SL_KEY_DELETE = 261
	SL_KEY_RIGHT = 262
	SL_KEY_LEFT = 263
	SL_KEY_DOWN = 264
	SL_KEY_UP = 265
	SL_KEY_PAGE_UP = 266
	SL_KEY_PAGE_DOWN = 267
	SL_KEY_HOME = 268
	SL_KEY_END = 269
	SL_KEY_CAPS_LOCK = 280
	SL_KEY_SCROLL_LOCK = 281
	SL_KEY_NUM_LOCK = 282
	SL_KEY_PRINT_SCREEN = 283
	SL_KEY_PAUSE = 284
	SL_KEY_F1 = 290
	SL_KEY_F2 = 291
	SL_KEY_F3 = 292
	SL_KEY_F4 = 293
	SL_KEY_F5 = 294
	SL_KEY_F6 = 295
	SL_KEY_F7 = 296
	SL_KEY_F8 = 297
	SL_KEY_F9 = 298
	SL_KEY_F10 = 299
	SL_KEY_F11 = 300
	SL_KEY_F12 = 301
	SL_KEY_F13 = 302
	SL_KEY_F14 = 303
	SL_KEY_F15 = 304
	SL_KEY_F16 = 305
	SL_KEY_F17 = 306
	SL_KEY_F18 = 307
	SL_KEY_F19 = 308
	SL_KEY_F20 = 309
	SL_KEY_F21 = 310
	SL_KEY_F22 = 311
	SL_KEY_F23 = 312
	SL_KEY_F24 = 313
	SL_KEY_F25 = 314
	SL_KEY_KEYPAD_0 = 320
	SL_KEY_KEYPAD_1 = 321
	SL_KEY_KEYPAD_2 = 322
	SL_KEY_KEYPAD_3 = 323
	SL_KEY_KEYPAD_4 = 324
	SL_KEY_KEYPAD_5 = 325
	SL_KEY_KEYPAD_6 = 326
	SL_KEY_KEYPAD_7 = 327
	SL_KEY_KEYPAD_8 = 328
	SL_KEY_KEYPAD_9 = 329
	SL_KEY_KEYPAD_DECIMAL = 330
	SL_KEY_KEYPAD_DIVIDE = 331
	SL_KEY_KEYPAD_MULTIPLY = 332
	SL_KEY_KEYPAD_SUBTRACT = 333
	SL_KEY_KEYPAD_ADD = 334
	SL_KEY_KEYPAD_ENTER = 335
	SL_KEY_KEYPAD_EQUAL = 336
	SL_KEY_LEFT_SHIFT = 340
	SL_KEY_LEFT_CONTROL = 341
	SL_KEY_LEFT_ALT = 342
	SL_KEY_LEFT_SUPER = 343
	SL_KEY_RIGHT_SHIFT = 344
	SL_KEY_RIGHT_CONTROL = 345
	SL_KEY_RIGHT_ALT = 346
	SL_KEY_RIGHT_SUPER = 347

	#Sigil Mouse
	SL_MOUSE_BUTTON_1 = 0
	SL_MOUSE_BUTTON_2 = 1
	SL_MOUSE_BUTTON_3 = 2
	SL_MOUSE_BUTTON_4 = 3
	SL_MOUSE_BUTTON_5 = 4
	SL_MOUSE_BUTTON_6 = 5
	SL_MOUSE_BUTTON_7 = 6
	SL_MOUSE_BUTTON_8 = 7
	SL_MOUSE_BUTTON_LEFT = SL_MOUSE_BUTTON_1
	SL_MOUSE_BUTTON_RIGHT = SL_MOUSE_BUTTON_2
	SL_MOUSE_BUTTON_MIDDLE = SL_MOUSE_BUTTON_3

	#sigil init functions
	attach_function :slWindow, [:int, :int, :string, :int], :void
	attach_function :slShowCursor, [:int], :void
	attach_function :slClose, [], :void
	attach_function :slShouldClose, [], :bool #is declared as int in sigil, made as bool for easier coding

	#sigil input (key & mouse)
	attach_function :slGetKey, [:int], :bool #declared as int in Sigil, made as bool for easier coding
	attach_function :slGetMouseButton, [:int], :bool #declared as int in Sigil, made as bool for easier coding
	attach_function :slGetMouseX, [], :int
	attach_function :slGetMouseY, [], :int

	#sigil time
	attach_function :slGetDeltaTime, [], :double
	attach_function :slGetTime, [], :double

	#sigil render
	attach_function :slRender, [], :void

	#sigil color
	attach_function :slSetBackColor, [:double, :double, :double], :void
	attach_function :slSetForeColor, [:double, :double, :double, :double], :void

	#sigil blend control
	attach_function :slSetAdditiveBlend, [:int], :void

	#sigil transformations
	attach_function :slPush, [], :void
	attach_function :slPop, [], :void

	attach_function :slTranslate, [:double, :double], :void
	attach_function :slRotate, [:double], :void
	attach_function :slScale, [:double, :double], :void

	#sigil texture loading
	attach_function :slLoadTexture, [:string], :int

	#sigil loading and playing sounds
	attach_function :slLoadWAV, [:string], :int
	attach_function :slSoundPlay, [:int], :int
	attach_function :slSoundLoop, [:int], :int
	attach_function :slSoundPause, [:int], :void
	attach_function :slSoundStop, [:int], :void
	attach_function :slSoundPauseAll, [], :void
	attach_function :slSoundResumeAll, [], :void
	attach_function :slSoundStopAll, [], :void
	attach_function :slSoundPlaying, [:int], :int
	attach_function :slSoundLooping, [:int], :int

	#sigil shape functions
	attach_function :slTriangleFill, [:double, :double, :double, :double], :void
	attach_function :slTriangleOutline, [:double, :double, :double, :double], :void

	attach_function :slRectangleFill, [:double, :double, :double, :double], :void
	attach_function :slRectangleOutline, [:double, :double, :double, :double], :void

	attach_function :slCircleFill, [:double, :double, :double, :int], :void
	attach_function :slCircleOutline, [:double, :double, :double, :int], :void

	attach_function :slSemiCircleFill, [:double, :double, :double, :int, :double], :void
	attach_function :slSemiCircleOutline, [:double, :double, :double, :int, :double], :void

	attach_function :slPoint, [:double, :double], :void

	attach_function :slLine, [:double, :double, :double, :double], :void

	attach_function :slSetSpriteTiling, [:double, :double], :void
	attach_function :slSetSpriteScroll, [:double, :double], :void
	attach_function :slSprite, [:int, :double, :double, :double, :double], :void

	#sigil text functions
	attach_function :slSetTextAlign, [:int], :void
	attach_function :slGetTextWidth, [:string], :double
	attach_function :slGetTextHeight, [:string], :double
	attach_function :slLoadFont, [:string], :int
	attach_function :slSetFont, [:int, :int], :void
	attach_function :slSetFontSize,[:int], :void
	attach_function :slText, [:double, :double, :string], :void

	#ignore alias for now(for testing purposes)
	#class << self
	#	alias :slwindow :slWindow
	#end
end