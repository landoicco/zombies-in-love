-- Set window properties
local windowWidth, windowHeight = 800, 600
local player = love.graphics.newImage("survivor.png")

love.window.setTitle("Puto el k lea esto")
love.window.setMode(windowWidth, windowHeight, {
    resizable = false,
    vsync = 0
})

-- Define spawn position for the player
function setPlayerSpawnPosition()
    local height = player:getHeight()
    local width = player:getWidth()

    initialXPos = (windowWidth / 2) - (width / 2)
    initialYPos = (windowHeight / 2) - (height / 2)
end

setPlayerSpawnPosition()

function love.draw()
    love.graphics.draw(player, initialXPos, initialYPos)
end
