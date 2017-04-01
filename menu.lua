options	= love.graphics.newImage("IMAGE/OPTIONS.png")
jouer 	= love.graphics.newImage("IMAGE/JOUER.png")
credit	= love.graphics.newImage("IMAGE/CREDIT.png")
quitter	= love.graphics.newImage("IMAGE/QUITTER.png")
b1 	= love.graphics.newImage("IMAGE/B1.png")
bh1	= love.graphics.newImage("IMAGE/BH1.png")
musique	= love.audio.newSource("MUSIQUE/test.mp3")

----------------------------------------------------------------------------------

function draw_menu()         
	love.graphics.setBackgroundColor(42, 142, 242 )
        love.graphics.print("LE MEILLEUR JEU D'ECHEC DU MONDE ",10 ,5)
        
	position_souris()
	musique:play()

	create_button(jouer, x/2 -150, y/3)
	create_button(options, x/2 -150, y/3 +150)
	create_button(credit, x/2 -150, y/3 +300)
	create_button(quitter, x/2 -150, y/3 +450)

end

----------------------------------------------------------------------------------


function position_souris()
love.graphics.print(love.mouse.getX(),x-100,0)
love.graphics.print(love.mouse.getY(),x-50,0)
end



function create_button(name, x_b, y_b)
	local x_m = love.mouse.getX()
	local y_m = love.mouse.getY()

	if x_m >= x_b and x_m <= x_b + 350 and y_m >= y_b and y_m <= y_b + 100 then 
		love.graphics.draw(bh1, x_b, y_b)
	else
		love.graphics.draw(b1, x_b, y_b)
	end
	love.graphics.draw(name, x_b, y_b)
end
----------------------------------------------------------------------------------

