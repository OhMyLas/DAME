function love.load()
	x,y = 1920,1080
 	gs = 2 
	
	require "conf"
  	require "menu"
	require "plateau"
	require "credit"
end


function love.update(dt)
        if gs == 4 then
                love.window.close()
        end

end


function love.draw()
 	if gs == 1 then	
		draw_menu()
	end

	if gs == 2 then
		draw_plateau()
	end

	if gs == 3 then
		draw_credit()
	end

end

