_G.love = require("love")

function love.load()
    Num = 0
    String = "Ola, Mundo"
end

-- a funcao update é executada a cada fps
function love.update()
    Num = Num+1
end


--[[
    o print funciona mais como "deixa isso ai na tela", e nao um print 
    tradicional.
    Por isso eu printo apenas uma vez e o numero segue atualizando
]]
function love.draw()
    love.graphics.print(Num)
end