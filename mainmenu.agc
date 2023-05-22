MainMenu:

Createtext(2,"Kamikaze Simulation")
SetTextSize(2,100)
SetTextPosition(2,(768-GetTexttotalwidth(2))/2,180)

Createtext(3,"by Tamaes")
SetTextSize(3,35)
SetTextPosition(3,(770+GetTexttotalwidth(3))/3,300)

Createtext(4,"Rekor: ")
SetTextSize(4,60)
SetTextPosition(4,603-GetTexttotalwidth(4),0)

Createtext(5, "Start")
SetTextSize(5,60)
Settextposition(5,(768-GetTexttotalwidth(5))/2,900)

gosub Hidegamesprites
gosub showmenutext

repeat 
	sync()
until GetRawKeyPressed(32)=1 

gameover=0
gosub Showgamesprites
gosub Hidemenutext

Return

// index nya:
// wibu =1
// rudal = 2
// amrik = 3
// Stars = 5 to 104
// rudal2 = 110 to 114

Hidegamesprites:
for i=1 to 114
	SetSpriteVisible(i,0)
next i
Return

Showgamesprites:
for i=1 to 114
	SetSpriteVisible(i,1)
next i
Return

Hidemenutext:
SetTextVisible(2,0)
SetTextVisible(3,0)
SetTextVisible(5,0)
Return

Showmenutext:
SetTextVisible(2,1)
SetTextVisible(3,1)
SetTextVisible(5,1)
Return

//=======================================
