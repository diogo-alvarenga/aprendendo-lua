-- Tabelas: Matrizes

local matriz = {
    {10,20,30},
    {"Ola","Mundo"},
    {100,200,300}
}
print(matriz[2][1])

-- Sets / Conjuntos

local set = {}
set["maca"] = true
set["banana"] = true
set["laranja"] = true

if set["maca"] then
    print("Existe")
end