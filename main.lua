-- Set window properties
local windowWidth, windowHeight = 800, 600
local player = love.graphics.newImage("survivor.png")
local playerAngle = 0

love.window.setTitle("Puto el k lea esto")
love.window.setMode(windowWidth, windowHeight, {
    resizable = false,
    vsync = 0
})

-- Define spawn position for the player
function setPlayerSpawnPosition()
    playerHeight = player:getHeight()
    playerWidth = player:getWidth()

    playerXPos = (windowWidth / 2) - (playerWidth / 2)
    playerYPos = (windowHeight / 2) - (playerHeight / 2)
end

-- Detect keyboard inputs every frame
function love.keypressed(key)
    if key == "e" then
        text = "E key has been pressed!"
    end
end

function love.keyreleased(key)
    if key == "e" then
        text = "E key has been released!"
    end
end

-- This funtion is called one at the beginning of the game
function love.load()
    setPlayerSpawnPosition()
end

function love.update(dt)
end

-- Callback function used to draw on screen every frame
function love.draw()
    love.graphics.draw(player, playerXPos, playerYPos)
end
