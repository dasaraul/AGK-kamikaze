efek_ledakan:

if GetSpriteCollision( 2, 3 ) =1

	PlaySound(mati)
	score=score+10
	amrikx=100: amriky=-50
	rudal_fired=0
	rudalx=-50 :rudaly=-50
endif

//kena hit
for i=0 to 4
	if GetSpriteCollision(110+i,1) =1
		PlaySound(mati)
		gameover=1
		SetSpritePosition(110,-100,-100)
		SetSpritePosition(111,-100,-100)
		SetSpritePosition(112,-100,-100)
		SetSpritePosition(113,-100,-100)
		SetSpritePosition(114,-100,-100)
		amrikx=100: amriky=-50


	endif
next i

return
