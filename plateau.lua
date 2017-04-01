plateau = love.graphics.newImage("IMAGE/plateau.png")
pionB 	= love.graphics.newImage("IMAGE/pionB.png")
pionN	= love.graphics.newImage("IMAGE/pionN.png")
reco	= love.graphics.newImage("IMAGE/RECOMMENCER.png")
quitter = love.graphics.newImage("IMAGE/QUITTER.png")
b1      = love.graphics.newImage("IMAGE/B1.png")
bh1     = love.graphics.newImage("IMAGE/BH1.png")
cerV	= love.graphics.newImage("IMAGE/CERCLE_VERT.png")
caseV	= love.graphics.newImage("IMAGE/CASE_VERTE.png")
--------------------------------------------------------------------------------

function draw_plateau()
	local a,b = x/2 -400, y/2 -400
	local c = b+500

	love.graphics.setBackgroundColor (42, 142, 242)
	love.graphics.print("LE MEILLEUR JEU D'ECHEC DU MONDE ",10 ,5)
	love.graphics.draw(plateau, x/2-400, y/2-400)
	
	create_button(reco, x-425, y-275)
	create_button(quitter, x-425, y-150)

	position_souris()
	
	for i = 0, 3 do
	create_pion(pionB, a+200*i,c)
        create_pion(pionB, a+200*i,c+200)
	create_pion(pionB, a+100+200*i,c+100)
	end
        
	for i = 0, 3 do
        create_pion(pionN, a+100+200*i,b)
	create_pion(pionN, a+100+200*i,b+200)
	create_pion(pionN, a+200*i,b+100)
	end
end
--------------------------------------------------------------------------------

function create_pion(name, x_p, y_p)
	local x_m = love.mouse.getX()
        local y_m = love.mouse.getY()
	if x_m >= x_p and x_m <= x_p+100 and y_m >= y_p and y_m <= y_p+100 then
		love.graphics.draw(name, x_p, y_p)
                love.graphics.draw(cerV, x_p, y_p)
	
	else
		love.graphics.draw(name, x_p, y_p)
	end
end
--------------------------------------------------------------------------------

