plateau = love.graphics.newImage("IMAGE/plateau.png")
pionB 	= love.graphics.newImage("IMAGE/pionB.png")
pionN	= love.graphics.newImage("IMAGE/pionN.png")
reco	= love.graphics.newImage("IMAGE/RECOMMENCER.png")
quitter = love.graphics.newImage("IMAGE/QUITTER.png")
b1      = love.graphics.newImage("IMAGE/B1.png")
bh1     = love.graphics.newImage("IMAGE/BH1.png")


function draw_plateau()
	local a,b = x/2 -400, y/2 -400
	local c = b+500

	love.graphics.setBackgroundColor (42, 142, 242)
	love.graphics.print("LE MEILLEUR JEU D'ECHEC DU MONDE ",10 ,5)
	love.graphics.draw(plateau, x/2-400, y/2-400)
	
	love.graphics.draw(b1, x-425, y-150)
	love.graphics.draw(quitter, x-425,y-150)
	love.graphics.draw(b1, x-425, y-275)
	love.graphics.draw(reco, x-425, y-275)

	for i = 0, 3 do
	love.graphics.draw(pionN, a+100+200*i, b)
	love.graphics.draw(pionN, a+100+200*i, b+200)
	love.graphics.draw(pionN, a+200*i, b+100)
	end

	for i = 0, 3 do
	love.graphics.draw(pionB, a+200*i, c)
        love.graphics.draw(pionB, a+200*i, c+200)
        love.graphics.draw(pionB, a+100+200*i, c+100)
	end

end
