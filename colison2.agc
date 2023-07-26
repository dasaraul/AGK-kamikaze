efek_ledakan2:

if GetSpriteCollision( 2, 5 ) =1
	PlaySound(mati)
	score=score+10
	amrik2x=-50: amrik2y=100
	rudal_fired=0
	rudalx=-50 :rudaly=-50
endif

//kena hit
for i=0 to 4
	if GetSpriteCollision(116+i,1) =1
		PlaySound(mati)
		gameover=1
		SetSpritePosition(116,-100,-100)
		SetSpritePosition(117,-100,-100)
		SetSpritePosition(118,-100,-100)
		SetSpritePosition(119,-100,-100)
		SetSpritePosition(120,-100,-100)
		amrik2x=-50: amrik2y=100


	endif
next i

return
