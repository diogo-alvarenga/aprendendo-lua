-- _G força o valor a ser global
_G.love = require("love")

-- carregar todos os objetos do jogo e demais
function love.load()
    vida_1 = 100
end

--é executada a cada fps, é onde é trabalhado a mecanica do jogo em si
function love.update(deltaTime)
    vida_1= vida_1 -30
end

-- é onde é "desenhado" os objetos e demais do nosso jogo
function love.draw()
    -- codigo
end