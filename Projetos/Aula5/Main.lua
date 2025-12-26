_G.love = require("love")

function love.load()
    
end

function love.update()
    
end

function love.draw()
    --Modo, posicao do x, posicao do y, largura, altura
    -- em modo posso usar fill para preencher e line para contorno
    love.graphics.rectangle("fill",300,300,300,100)
    --Modo, posicao x, posicao y
    love.graphics.circle("fill",250,250,100)
    --Modo, posicao x, posicao y, raio, rangulo inicial, angulo final
    love.graphics.arc("fill",250,250,50,math.rad(0), math.rad(25))
    --limpa toda a tela
    love.graphics.clear()
end