loader:

// index nya:
// wibu =1
// rudal = 2
// amrik = 3
// Stars = 5 to 104
// rudal2 = 110 to 114
// rudal3 = 116 to 120

loadimage(1,"wibu.png")
loadimage(2,"rudal.png")
loadimage(3,"amrik.png")
loadimage(4,"rudal2.png")
loadimage(5,"amrik2.png")
loadimage(6,"rudal3.png")


// posisi player
CreateSprite(1,1)
playerx=GetVirtualWidth()/2 - GetSpriteWidth(1)/2
playery=GetVirtualHeight()-GetSpriteHeight(1)

SetSpritePosition(1,playerx,playery)

// bagian rudal
CreateSprite(2,2)
SetSpritePosition(2,-100,-100)

// bagian rudal2
CreateSprite(6,6)
SetSpritePosition(6,-100,-100)

// posisi musuh
CreateSprite(3,3)
SetSpritePosition(3,100,20)

// posisi musuh2
CreateSprite(5,5)
SetSpritePosition(5,100,20)

//rudal
for i=0 to 4
	CreateSprite(110+i,4)
next i

//rudal2
for j=0 to 4
	CreateSprite(116+j,4)
next j

Return

