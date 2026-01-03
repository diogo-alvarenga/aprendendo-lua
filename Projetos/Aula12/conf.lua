function love.conf(t)
    t.version = 1.0 --versao do love que nosso jogo esta sendo feito 
    t.console = true
    t.window.title = "Meu Jogo"
    --t.window.icon = "" -- icone do jogo
   --[[] t.window.width = 600
    t.window.height=200
    t.window.resizable = true -- posso mexer no tamanho da tela
    t.window.minwidth= 100 --largura minima
    t.window.minheight=100 -- altura minima 
    t.window.maxwidth=600 --largura maxima
    t.window.maxheight=200 --altura maxima]]
    t.window.fullscreen = true
end