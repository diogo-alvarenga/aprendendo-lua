local felinos = {
    vida = 100,
    patas = 4,
    cor = nil
}

function felinos:new(atr)
    instance = {}
    instance.cor = atr
    setmetatable(instance,{__index = felinos}) -- ele vai herdar as propriedades de felinos
    return instance
end

-- essa funcao vai para dentro da classe felinos
function felinos:damage(valor)
    self.vida = self.vida -valor
end

return felinos