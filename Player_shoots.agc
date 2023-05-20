Player_shoots:

// Check if player has fired
if  GetPointerPressed()=1 and lazer_fired=0
	lazer_fired=1
	lazerx=GetSpriteX(1)+GetSpriteWidth(1)/2-GetSpriteWidth(2)/2
	lazery=getspriteY(1)-40
endif

// If lazer has been shot, move it up the screen
if lazer_fired=1
	lazery=lazery-12
endif

//If the lazer has moved off the screen, hide it
If lazery<-GetSpriteHeight(2)
	lazer_fired=0
endif
	

// Set the position of the lazer
SetSpritePosition(2,lazerx,lazery)

return
