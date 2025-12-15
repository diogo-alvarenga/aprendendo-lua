
function adicionarCliente(fila,valor)
    print("Cliente "..valor.." chegou na fila")
    table.insert(fila,valor)
end

function atendeCliente(fila)
    print("Cliente atendido = "..fila[1])
    table.remove(fila,1)
end

local fila = {}
adicionarCliente(fila,1)
adicionarCliente(fila,2)
adicionarCliente(fila,3)
adicionarCliente(fila,4)
adicionarCliente(fila,5)

atendeCliente(fila)
atendeCliente(fila)
atendeCliente(fila)
atendeCliente(fila)
atendeCliente(fila)