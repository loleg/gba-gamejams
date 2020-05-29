
//{{BLOCK(loseScreen)

//======================================================================
//
//	loseScreen, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 553 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 17696 + 2048 = 19776
//
//	Time-stamp: 2020-01-28, 12:02:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.15
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSESCREEN_H
#define GRIT_LOSESCREEN_H

#define loseScreenTilesLen 17696
extern const unsigned int loseScreenTiles[4424];

#define loseScreenMapLen 2048
extern const unsigned short loseScreenMap[1024];

#define loseScreenPalLen 32
extern const unsigned short loseScreenPal[16];

#endif // GRIT_LOSESCREEN_H

//}}BLOCK(loseScreen)
