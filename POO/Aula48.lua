
local classe1 = {}


-- Isso é um construtor 
function classe1.new() -- criar novo objeto pertencente a classe

    -- self representa a classe1
    local self = {} -- novo objeto
    
    self.vida =100

    function self.takeDamage(dano)
        self.vida = self.vida - dano
        
    end

    return self
end

local obj1 = classe1.new()
local obj2 = classe1.new()
obj1.takeDamage(30)
print(obj1.vida)
print(obj2.vida)