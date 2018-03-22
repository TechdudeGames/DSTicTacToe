#include <nds.h>
#include "stdio.h"
#include <assert.h>
//Graphics and sprites
#include "logo.h"
#include "gb.h"
#include "x.h"
#include "xpasted.h"
#include "o.h"
#include "opasted.h"
#include "sprites.h"
#include "xosprites.h"

//Putting the DMA channel to work the copy magic behind the scenes
static const int DMA_CHANNEL = 3;
void initVideo(){
	/*Start mapping the video memory*/
	/*I will use bank A and B for the main screen mem. I will then use bank C for the sub background mem. Bank D is just for the LCD*/
	vramSetMainBanks(VRAM_A_MAIN_BG_0x06000000,
					 VRAM_B_MAIN_BG_0x06020000,
					 VRAM_C_SUB_BG_0x06200000,
					 VRAM_D_LCD);
	/*Video mode for the main screen*/
	videoSetMode(MODE_5_2D|
				DISPLAY_BG2_ACTIVE|
				DISPLAY_BG3_ACTIVE);
	/*Video mode for the sub screen*/
	videoSetModeSub(MODE_5_2D|
					DISPLAY_BG3_ACTIVE
		);
	/*Sprite VBank setup*/
	vramSetBankE(VRAM_E_MAIN_SPRITE);
	}
	
void initBackground(){
	/*Putting the backdrop of the top screen at the center on the top*/
	REG_BG3CNT= BG_BMP16_256x256 | 
				BG_BMP_BASE(0) |
				BG_PRIORITY(3);
	/*Some affine transformation stuff*/
	REG_BG3PA = 1 << 8;
	REG_BG3PB = 0;
	REG_BG3PC = 0;
	REG_BG3PD = 1 << 8;
	/*Placing the logo at the origin*/
	REG_BG3X = 0;
	REG_BG3Y = 0;
	}
	
/*Declaring some stuff here to allow DMA to copy the logo into the background 3 bank*/
void displaylogo(){
		dmaCopyHalfWords(DMA_CHANNEL,logoBitmap, (uint16 *)BG_BMP_RAM(0), logoBitmapLen);
		}

/*The function to display the game board*/
void displaygb(){
		dmaCopyHalfWords(DMA_CHANNEL,gbBitmap, (uint16 *)BG_BMP_RAM(0), gbBitmapLen);
		}
		
int main() {
	/*Config some video stuff*/
	powerOn(POWER_ALL_2D);
	initVideo();
	initBackground();
	displaylogo();
	consoleDemoInit();
	/**/
	int gbline1 [3] = {0,0,0}; //0 means that there is nothing there, 1 means there is an x, 2 means there is a o.
	int gbline2 [3] = {0,0,0};
	int gbline3 [3] = {0,0,0};
	int currentletter = 1;
	/*Now for the main event*/
	iprintf("Press Start");
	while(1==1){
		scanKeys();
		if (keysDown() & KEY_START) break;
		}
	displaygb();
	initSprites();
	while (1==1){
		}
	return 0;
}