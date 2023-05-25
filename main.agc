
SetVirtualResolution( 768, 1024 )
UseNewDefaultFonts(1)

LoadImage ( 999, "bg.jpg" )
CreateSprite ( 999, 999 )

playerx as float
playery as float
rudalx as float = -100
rudaly as float
rudal_fired = 0

amrikx as float
amriky as float
amrik_direction = 4
amrik_fired=0
gameover=1
amrik2x as float
amrik2y as float
amrik2_direction = 4
amrik2_fired=0
gameover=1

score=0
hiscore=0

#include "Loader.agc"
#include "PlayerMove.agc"
#include "Player_shoots.agc"
#include "amrik_move.agc"
#include "amrik_move2.agc"
#include "efek_ledakan.agc"
#include "colison2.agc"
#include "stars.agc"
#include "Text.agc"
#include "mainmenu.agc"

gosub loader
gosub make_stars
gosub Make_text

do
	if gameover=1
		gosub MainMenu
		score=0
	endif
    
	gosub PlayerMove
	gosub Player_shoots
	gosub amrik_move
	gosub amrik_move2
	gosub amrik_Shoot
	gosub amrik2_Shoot
	

	SetTextString(1,"SCORE: "+str(score))
	if score>hiscore
		hiscore=score
	endif
	SetTextString(4,"Top Score: "+str(hiscore))
	



	gosub efek_ledakan 
	gosub efek_ledakan2 

    Sync()
loop
