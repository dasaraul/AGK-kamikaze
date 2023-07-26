amrik_move2:
// Move enemy down the screen at same rate
amrik2y=amrik2y+1


//Move the enemy left or right
If amrik2_direction=4 and amrik2x>GetVirtualWidth()-GetSpriteWidth(5)
	amrik2_direction=-4
endif

//amrik2x=amrik2x+amrik2_direction

If amrik2_direction=-4 and amrik2x<0
	amrik2_direction=4
endif

amrik2x=amrik2x+amrik2_direction

SetSpritePosition(5,amrik2x,amrik2y)

return


amrik2_Shoot:
if amrik2_fired=0
	if random(1,100)=5
		amrik2_fired=1
		for i=0 to 4
			SetSpritePosition(110+i,getspritex(5)+60,getspritey(5)+70)
		next i
	endif
endif

if amrik2_fired=1
		SetSpritePosition(116,getspritex(116)-3,getspritey(116)+3)
		SetSpritePosition(117,getspritex(117)-1,getspritey(117)+3)
		SetSpritePosition(118,getspritex(118),getspritey(118)+3)
		SetSpritePosition(119,getspritex(119)+1,getspritey(119)+3)
		SetSpritePosition(120,getspritex(120)+3,getspritey(120)+3)
endif

if getspritey(116)>1024
	amrik2_fired=0
endif
Return
