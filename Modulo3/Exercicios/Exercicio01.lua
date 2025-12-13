local aluno={ }

print("Digite seu nome ")
aluno.nome = io.read()

print("Digite sua idade ")
aluno.idade = tonumber(io.read())

print("Digite seu ano de nascimento ")
aluno.ano = tonumber(io.read())

print("Seu nome e "..aluno.nome)
print("Sua idade e "..aluno.idade)
print("Seu ano de nascimento "..aluno.ano)