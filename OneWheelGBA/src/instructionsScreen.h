
//{{BLOCK(instructionsScreen)

//======================================================================
//
//	instructionsScreen, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 271 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 8672 + 2048 = 10752
//
//	Time-stamp: 2020-01-28, 12:02:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.15
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSSCREEN_H
#define GRIT_INSTRUCTIONSSCREEN_H

#define instructionsScreenTilesLen 8672
extern const unsigned int instructionsScreenTiles[2168];

#define instructionsScreenMapLen 2048
extern const unsigned short instructionsScreenMap[1024];

#define instructionsScreenPalLen 32
extern const unsigned short instructionsScreenPal[16];

#endif // GRIT_INSTRUCTIONSSCREEN_H

//}}BLOCK(instructionsScreen)
