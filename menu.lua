options	= love.graphics.newImage("IMAGE/OPTIONS.png")
jouer 	= love.graphics.newImage("IMAGE/JOUER.png")
credit	= love.graphics.newImage("IMAGE/CREDIT.png")
quitter	= love.graphics.newImage("IMAGE/QUITTER.png")

b1 	= love.graphics.newImage("IMAGE/B1.png")
bh1	= love.graphics.newImage("IMAGE/BH1.png")

function draw_menu()         
	love.graphics.setBackgroundColor(42, 142, 242 )
        love.graphics.print("LE MEILLEUR JEU D'ECHEC DU MONDE ",10 ,5)
        
	love.graphics.draw(b1, x/2 -150 , y/3)
        love.graphics.draw(b1, x/2 -150 , y/3+150)
        love.graphics.draw(b1, x/2 -150 , y/3+300)
	love.graphics.draw(b1, x/2 -150 , y/3+450)

	love.graphics.draw(jouer,x/2-150 , y/3)
        love.graphics.draw(options, x/2 -150 , y/3 +150)
	love.graphics.draw(credit, x/2 -150 , y/3 +300)
	love.graphics.draw(quitter, x/2 -150, y/3 +450)
end

