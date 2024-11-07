
function love.load()
    -- Define as cores
    white = {1, 1, 1}
    black = {0, 0, 0}
    green = {0.2, 0.8, 0.2}
    
    -- Define a posição e tamanho do creeper
    creeperX = 100
    creeperY = 100
    creeperSize = 40
end

function love.draw()
    -- Desenha o corpo do creeper
    love.graphics.setColor(green)
    love.graphics.rectangle("fill", creeperX, creeperY, creeperSize * 2, creeperSize * 3)

    -- Desenha a cabeça do creeper
    love.graphics.rectangle("fill", creeperX, creeperY, creeperSize * 2, creeperSize)

    -- Desenha os olhos
    love.graphics.setColor(black)
    love.graphics.rectangle("fill", creeperX + 8, creeperY + 8, creeperSize * 0.5, creeperSize * 0.5)  -- Olho esquerdo
    love.graphics.rectangle("fill", creeperX + 24, creeperY + 8, creeperSize * 0.5, creeperSize * 0.5) -- Olho direito

    -- Desenha a boca
    love.graphics.rectangle("fill", creeperX + 8, creeperY + 20, creeperSize * 1.5, creeperSize * 0.5)  -- Boca superior
    love.graphics.rectangle("fill", creeperX + 8, creeperY + 25, creeperSize * 0.5, creeperSize * 0.5)  -- Boca esquerda
    love.graphics.rectangle("fill", creeperX + 24, creeperY + 25, creeperSize * 0.5, creeperSize * 0.5) -- Boca direita

    -- Restaura a cor para branco
    love.graphics.setColor(white)
end