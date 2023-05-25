
SetVirtualResolution( 768, 1024 )
UseNewDefaultFonts(1)

LoadImage ( 999, "bg.jpg" )
CreateSprite ( 999, 999 )

playerx as float
playery as float
lazerx as float = -100
lazery as float
lazer_fired = 0

enemyx as float
enemyy as float
enemy_direction = 4
enemy_fired=0
gameover=1

score=0
hiscore=0

#include "Loader.agc"
#include "PlayerMove.agc"
#include "Player_shoots.agc"
#include "enemy_move.agc"
#include "efek_ledakan.agc"
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
	gosub Enemy_move
	gosub Enemy_Shoot




	SetTextString(1,"SCORE: "+str(score))
	if score>hiscore
		hiscore=score
	endif
	SetTextString(4,"Top Score: "+str(hiscore))
	



	gosub efek_ledakan
    Sync()
loop
