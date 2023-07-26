Player_shoots:

// Check if player has fired
if  GetRawKeyPressed(66)=1 and rudal_fired=0
	PlaySound(rudal)
	rudal_fired=1
	rudalx=GetSpriteX(1)+GetSpriteWidth(1)/2-GetSpriteWidth(2)/2
	rudaly=getspriteY(1)-40

endif

// If lazer has been shot, move it up the screen
if rudal_fired=1
	rudaly=rudaly-12
endif

//If the lazer has moved off the screen, hide it
If rudaly<-GetSpriteHeight(2)
	rudal_fired=0
endif
	

// Set the position of the lazer
SetSpritePosition(2,rudalx,rudaly)

return
