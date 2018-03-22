
@{{BLOCK(x)

@=======================================================================
@
@	x, 32x32@4, 
@	+ palette 256 entries, not compressed
@	+ 16 tiles not compressed
@	Total size: 512 + 512 = 1024
@
@	Time-stamp: 2018-03-21, 19:15:18
@	Exported by Cearn's GBA Image Transmogrifier, v0.8.14
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global xTiles		@ 512 unsigned chars
	.hidden xTiles
xTiles:
	.word 0x11111111,0x11111111,0x11111111,0x11110000,0x11100000,0x11000000,0x11000000,0x10000000
	.word 0x00111111,0x00111111,0x00111111,0x00001111,0x00011111,0x00011111,0x00111111,0x01111111
	.word 0x11111111,0x11111111,0x11111110,0x11110000,0x01111000,0x00111100,0x00111110,0x00011110
	.word 0x00011111,0x00011111,0x00011111,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x10000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.word 0x01111111,0x11111111,0x11111110,0x11111110,0x11111100,0x11111000,0x11111000,0x11111000
	.word 0x00011111,0x00001111,0x00000111,0x00000111,0x00000011,0x00000011,0x00000111,0x00001111
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000

	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x10000000,0x11000000
	.word 0x11111000,0x11111100,0x11111100,0x11011110,0x10011111,0x00001111,0x00000111,0x00000111
	.word 0x00001111,0x00011111,0x00011111,0x00111111,0x01111111,0x01111111,0x11111111,0x11111110
	.word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000001
	.word 0x11000000,0x11100000,0x11100000,0x11111111,0x11111111,0x11111111,0x00000000,0x00000000
	.word 0x00000011,0x00000011,0x00000001,0x00000111,0x00000111,0x00000111,0x00000000,0x00000000
	.word 0x11111110,0x11111100,0x11111000,0x11111111,0x11111111,0x11111111,0x00000000,0x00000000
	.word 0x00000001,0x00000011,0x00000011,0x00111111,0x00111111,0x00111111,0x00000000,0x00000000

	.section .rodata
	.align	2
	.global xPal		@ 512 unsigned chars
	.hidden xPal
xPal:
	.hword 0x0000,0x7FFF,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

@}}BLOCK(x)