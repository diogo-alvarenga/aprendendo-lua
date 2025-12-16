-- Definicao de Objetos

local Gato = {
    vida = 100,
    cor = "Cinza",
    ataque = function ()
        print("Gato atacou")
    end
}

print(Gato.vida)

--=======================

local Button = {
    size = {100,200},
    text = "Clique",
    parent = "Janela1"
}

print("Tamanho: "..Button.size[1]..'x'..Button.size[2])
print(Button.texto)

-- Objetos: Propriedades e Metodos

Gato.ataque() -- executou a funcao