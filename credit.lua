cred = love.graphics.newImage("IMAGE/credit_calc.png")
quitter	= love.graphics.newImage("IMAGE/QUITTER.png")

b1 	= love.graphics.newImage("IMAGE/B1.png")
bh1	= love.graphics.newImage("IMAGE/BH1.png")

function draw_credit()
	love.graphics.setBackgroundColor(42, 142, 242)
	love.graphics.print("LE MEILLEUR JEU D'ECHEC DU MONDE ", 10, 5)
	
	love.graphics.draw(cred, x/2 -400, y/2 -400)
	love.graphics.draw(b1, x-425,y-150 )
	love.graphics.draw(quitter, x-425,y-150 )
	
end
