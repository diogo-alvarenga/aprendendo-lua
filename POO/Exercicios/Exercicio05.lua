local Livro = {}

function Livro:novoLivro(titulo, autor)
    local self = {}

    self.titulo = titulo
    self.autor = autor
    local disponivel = "Disponivel"

    function self.emprestar()
        print("Livro pego para emprestimo")
        disponivel = "Nao disponivel"
    end

    function self.devolver()
        print("Livro devolvido")
        disponivel = "Disponivel"
    end

    function self.informacoes()
        print(self.titulo)
        print(self.autor)
        print(disponivel)
    end

    return self
end

local livro = Livro:novoLivro("O cemiterio","Stephen King")
local livro2 = Livro:novoLivro("O iluminado","Stephen King")
livro:informacoes()

livro:emprestar()
livro:informacoes()

livro:devolver()
livro:informacoes()

--===============

local Biblioteca = {}

function Biblioteca:new()
    local self = {}

    self.listaDeLivros = {}

    function self.adicionarUmLivro(livro)
        print("Livro adicionado")
        table.insert(self.listaDeLivros,livro)
    end

    function self.buscarLivro(titulo)
        for _,v in ipairs(self.listaDeLivros) do
            if v.titulo == titulo then
                print("Livro encontrado!!!")
                v:informacoes()
            end
        end
    end

    return self
end

local biblioteca = Biblioteca:new()
biblioteca.adicionarUmLivro(livro)
biblioteca.adicionarUmLivro(livro2)

biblioteca.buscarLivro("O cemiterio")
biblioteca.buscarLivro("O iluminado")