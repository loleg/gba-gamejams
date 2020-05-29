
//{{BLOCK(startScreen)

//======================================================================
//
//	startScreen, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 362 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 11584 + 2048 = 13664
//
//	Time-stamp: 2020-01-28, 12:02:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.15
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTSCREEN_H
#define GRIT_STARTSCREEN_H

#define startScreenTilesLen 11584
extern const unsigned int startScreenTiles[2896];

#define startScreenMapLen 2048
extern const unsigned short startScreenMap[1024];

#define startScreenPalLen 32
extern const unsigned short startScreenPal[16];

#endif // GRIT_STARTSCREEN_H

//}}BLOCK(startScreen)
