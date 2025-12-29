_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(255/255,234/255,148/255)
end

function love.update()
    
end

function love.draw()
    love.graphics.setColor(42/255,79/255,201/255)--azul
    love.graphics.rectangle("fill",300,300,250,100)

    love.graphics.setColor(44/255,199/255,24/255)
    love.graphics.rectangle("fill",400,150,100,100)
end