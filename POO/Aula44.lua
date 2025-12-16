local Gato = {
    vida = 100,
    cor = "Cinza"

}

function Gato:damage(dano)
    self.vida = self.vida - dano
end

print(Gato.vida)
Gato:damage(20)
print(Gato.vida)