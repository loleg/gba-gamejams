
//{{BLOCK(gameBack)

//======================================================================
//
//	gameBack, 1024x256@4, 
//	+ palette 16 entries, not compressed
//	+ 1036 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 32 + 33152 + 8192 = 41376
//
//	Time-stamp: 2020-01-28, 12:02:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.15
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEBACK_H
#define GRIT_GAMEBACK_H

#define gameBackTilesLen 33152
extern const unsigned int gameBackTiles[8288];

#define gameBackMapLen 8192
extern const unsigned short gameBackMap[4096];

#define gameBackPalLen 32
extern const unsigned short gameBackPal[16];

#endif // GRIT_GAMEBACK_H

//}}BLOCK(gameBack)
