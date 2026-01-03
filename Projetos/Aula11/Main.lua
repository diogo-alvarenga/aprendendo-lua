_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(255/255,234/255,148/255)

    Ret = {
        PosX = 30,
        PosY = 250,
        var = false,
        Velocidade = 200
    }
    Quad ={
        PosX = 650,
        PosY = 250
    }
    DT= nil
end

function love.update(dt) --DeltaTime
    DT = dt
    if (Ret.PosX +200)== Quad.PosX then
        Ret.var= true
    end


    if love.keyboard.isDown("a") then
       Ret.PosX = Ret.PosX - Ret.Velocidade *DT
    end
    if love.keyboard.isDown("d") then
        Ret.PosX = Ret.PosX +Ret.Velocidade *DT
    end
    if love.keyboard.isDown("w") then
        Ret.PosY = Ret.PosY -Ret.Velocidade *DT
    end
    if love.keyboard.isDown("s") then
        Ret.PosY = Ret.PosY +Ret.Velocidade *DT
    end
end

function love.draw()
    love.graphics.setColor(42/255,79/255,201/255)--azul
    love.graphics.rectangle("fill",Ret.PosX,Ret.PosY,200,100)
    
    love.graphics.print(DT,50,50,nil,3)
end