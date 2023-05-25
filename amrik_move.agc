amrik_move:
// Move enemy down the screen at same rate
amriky=amriky+1


//Move the enemy left or right
If amrik_direction=4 and amrikx>GetVirtualWidth()-GetSpriteWidth(3)
	amrik_direction=-4
endif

//amrikx=amrikx+amrik_direction

If amrik_direction=-4 and amrikx<0
	amrik_direction=4
endif

amrikx=amrikx+amrik_direction

SetSpritePosition(3,amrikx,amriky)

return


amrik_Shoot:
if amrik_fired=0
	if random(1,100)=5
		amrik_fired=1
		for i=0 to 4
			SetSpritePosition(110+i,getspritex(3)+60,getspritey(3)+70)
		next i
	endif
endif

if amrik_fired=1
		SetSpritePosition(110,getspritex(110)-3,getspritey(110)+3)
		SetSpritePosition(111,getspritex(111)-1,getspritey(111)+3)
		SetSpritePosition(112,getspritex(112),getspritey(112)+3)
		SetSpritePosition(113,getspritex(113)+1,getspritey(113)+3)
		SetSpritePosition(114,getspritex(114)+3,getspritey(114)+3)
endif

if getspritey(110)>1024
	amrik_fired=0
endif
Return
