_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(255/255,234/255,148/255)

    Ret = {
        PosX = 30,
        PosY = 250,
        var = false
    }
    Quad ={
        PosX = 650,
        PosY = 250
    }
end

function love.update()
    Ret.PosX = Ret.PosX +1
    if (Ret.PosX +200)== Quad.PosX then
        Ret.var= true
    end
end

function love.draw()
    love.graphics.setColor(42/255,79/255,201/255)--azul
    love.graphics.rectangle("fill",Ret.PosX,Ret.PosY,200,100)


    if Ret.var == false then
        love.graphics.setColor(44/255,199/255,24/255)--verde
        love.graphics.rectangle("fill",Quad.PosX,Quad.PosY,100,100)
    end

end