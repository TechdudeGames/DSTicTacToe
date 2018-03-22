#include <nds.h>
#include <assert.h>
#include "sprites.h"
#include "x.h"
#include "xpasted.h"
#include "o.h"
#include "opasted.h"
#include "sprites.h"
#include "xosprites.h"
void initSprites(OAMTable * oam, SpriteInfo *spriteInfo){
	static const int BYTES_PER_16_COLOR_TILE = 32;
	static const int COLORS_PER_PALETTE = 16;
	static const int BOUNDARY_VALUE= 32;
	static const int OFFSET_MULTIPLIER = BOUNDARY_VALUE;
	int nextAvailableTileIdx = 0;
	//We are going to need to create 20 sprites. 18 of which are going to be hidden at the start of the game and will appear whereever the white letter cursor is.
	//Creating the 9 X sprites
	//xp means x pasted
	//xc means x cursor
	int OAM_ID=0;
	//First 
	assert(OAM_ID < SPRITE_COUNT);
	SpriteInfo * xp1Info = &spriteInfo[OAM_ID];
	SpriteEntry * xp1 = &oam->oamBuffer[OAM_ID];
	//Init info
	xp1Info->oamId = OAM_ID;
	xp1Info->width = 30;
	xp1Info->height = 30;
	xp1Info->angle = 0;
	xp1Info->entry = xp1;
	//config attribute 0
	xp1->y = 40 - xp1Info->height;
	xp1->isRotateScale=false;
	xp1->isSizeDouble = false;
	xp1->objMode = OBJMODE_NORMAL;
	xp1->isMosaic = false;
	xp1->colMode = OBJCOLOR_16;
	xp1->objShape= OBJSHAPE_SQUARE;
	//config attribute 1
	xp1->x = 70;
	xp1->objSize = OBJSIZE_32;
	}