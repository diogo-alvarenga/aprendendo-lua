-- Publicas
    -- Os objeos possuem acesso
-- Privada
    -- Os objetos não tem acesso
    -- Variaveis ou funcoes com "local"
-- Estatica
    -- Nao necessita dos objetos


local Classe ={}

-- uma funcao estatica, ela pode ser acessada diretamente pela classe
function Classe.FuncaoEstatica()
    print("Funcao Estatica")
end

function Classe.new() --Construtor
    local self ={}
    self.vida = 100 -- Publica
    local cor = "Vermelho" -- Privada - O objeto nao possui ela
    
    function self.GetCor() -- Cor é privado, mas essa funcao publica acessa a propriedade privada
        return cor -- Com essa funcao eu posso apenas visualizar, mas nao alterar
    end -- se eu colocar LOCAL antes de function, a funcao torna-se privada. Ai nao poderei ter acesso a ela

    return self
end

local obj = Classe.new()
print(obj.vida)
print(obj.cor) --nil
print(obj.GetCor()) -- vai ser retornado, pois a funcao publica retorna a variavel privada 
Classe.FuncaoEstatica() -- acessando pela classe - estatico