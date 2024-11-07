-- Habilitar UTF-8 no terminal sem exibir mensagem
os.execute("chcp 65001 > nul")

-- Limpar a tela
local function clearScreen()
    os.execute("cls")
end

-- Dados da criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com um temperamento explosivo."
local emoji = "💥"
local sound = "Tssssss"
local favoriteTime = "Noturno"
local item = "Pólvora"

-- Atributos
local attributes = {
    Ataque = 10,
    Defesa = 1,
    Vida = 5,
    Velocidade = 7,
    Inteligencia = 2 
}

-- Função para obter a barra de progresso
local function getProgressBar(attribute)
    local fullChar, emptyChar = "⬜", "⬛"
    return string.rep(fullChar, attribute) .. string.rep(emptyChar, 10 - attribute)
end

-- Função para imprimir o cartão do monstro
local function printCard()
    clearScreen() 
    print(string.rep("=", 50))
    print("| ")
    print("| " .. monsterName)
    print("| " .. description)
    print("| ")
    print("| Item: " .. item)
    print("| Som: " .. sound)
    print("| Emoji Favorito: " .. emoji)
    print("| Horário Favorito: " .. favoriteTime)
    print("| ")
    print("| Atributos")
    for attr, value in pairs(attributes) do
        print(string.format("|    %s: %s", attr, getProgressBar(value)))
    end
    print("| ")
    print(string.rep("=", 50))
end

-- Função para imprimir a história do personagem
local function printStory()
    clearScreen() 
    print(string.rep("=", 70))
    print("| História do " .. monsterName)
    print("| O Creeper é uma criatura aterrorizante que vive")
    print("| em cavernas e florestas. Ele se aproxima silenciosamente,")
    print("| esperando o momento certo para explodir. Sua presença")
    print("| é temida por muitos jogadores, pois um encontro inesperado")
    print("| pode resultar em uma explosão devastadora. A pólvora")
    print("| que ele deixa para trás é a chave para criar explosivos.")
    print(string.rep("=", 70))
    print("Pressione Enter para continuar...")
    io.read()  -- Pausa até que o usuário pressione Enter
end

-- Loop principal
while true do
    printCard()
    print("Deseja ver a história do personagem? (s/n)")
    local choice = io.read()
    if choice == "s" then 
        printStory()
    elseif choice == "n" then
        print("Saindo...")
        break
    else
        print("Escolha inválida! Tente novamente.")
        io.read() 
    end
end
