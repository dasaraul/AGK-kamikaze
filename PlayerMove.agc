PlayerMove:

// Move the ship in the X direction using GetDirectionX()
playerx=playerx+GetDirectionX()*12

// Check if the player ship is at the edge of the left side
if playerx<0
	playerx=0
endif

// Check if the player ship is at the right side of the screen

if playerx>GetVirtualWidth()-GetSpriteWidth(1)
	playerx=GetVirtualWidth()-GetSpriteWidth(1)
endif

// Set the player ship's position
SetSpritePosition(1,playerx,playery)

Return
