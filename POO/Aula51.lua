
ContaBancaria = {}

--[[
    A linha abaixo faz com que, caso voce procure algo
    no objeto e nao exista, ele procura diretamente nao
    classe ContaBancaria
]]
ContaBancaria.__index = ContaBancaria

function ContaBancaria:new(saldo)

    local obj = setmetatable({},self)-- a metatable de obj é ContaBancaria
    obj._saldo = saldo or 0 -- _saldo -> Privado por convencao

    return obj

end

function ContaBancaria:depositar(valor) --setter/set
    if valor>0 then
        self._saldo = self._saldo+valor
    end
end

function ContaBancaria:sacar(valor) -- getter/get
    if valor>0 and self._saldo>= valor then
        self._saldo = self._saldo-valor
        return valor
    else
        return "Saldo Insuficiente"
    end
end

function ContaBancaria:verSaldo() --getter/get
    return self._saldo
end

local minhaConta = ContaBancaria:new(100)
minhaConta:depositar(50)
print(minhaConta:verSaldo())
print(minhaConta:sacar(50))
print(minhaConta:verSaldo())