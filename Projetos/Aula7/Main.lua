_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(255/255,234/255,148/255)
    _G.Circulo1 = {
        PosX = 250,
        PosY = 250
    }    
end

function love.update()
    Circulo1.PosX = Circulo1.PosX+2
    --Circulo1.PosY = Circulo1.PosY+2
end

function love.draw()
    love.graphics.setColor(42/255,79/255,201/255)
    love.graphics.circle("fill", Circulo1.PosX,Circulo1.PosY,50)
end