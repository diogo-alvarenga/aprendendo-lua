_G.love = require("love")

function love.load()
    love.graphics.setBackgroundColor(255/255,234/255,148/255)
    Mouse_X =  0
    Mouse_Y =  0
end

function love.update()
    --[[
    if love.mouse.isDown("1") then
        Mouse_X = love.mouse.getX()
        Mouse_Y = love.mouse.getY()
    end]]
end

function love.draw()
    love.graphics.rectangle("fill",Mouse_X,Mouse_Y,100,100)
end

--se eu quiser usar uma funcao diretamente para o mouse
--mas por ser uma funcao, ele executa apenas uma vez,
--diferente do codigo em update
function love.mousepressed(x,y,button)
    if button == 1 then
        Mouse_X = x 
        Mouse_Y = y
    end
end