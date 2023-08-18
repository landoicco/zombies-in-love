-- Set window properties
local windowWidth, windowHeight = 800, 600
local playerSprite = love.graphics.newImage("survivor.png")
local playerAngle = 0
local playerSpeed = 1.7

love.window.setTitle("Puto el k lea esto")
love.window.setMode(windowWidth, windowHeight, {
    resizable = false,
    vsync = 0
})

-- Define spawn position for the player
function setPlayerSpawnPosition()
    local playerHeight = playerSprite:getHeight()
    local playerWidth = playerSprite:getWidth()

    local playerXPos = (windowWidth / 2) - (playerWidth / 2)
    local playerYPos = (windowHeight / 2) - (playerHeight / 2)

    player = {}
    player.x = playerXPos
    player.y = playerYPos
    player.w = playerWidth
    player.h = playerHeight
end

-- This funtion is called one at the beginning of the game
function love.load()
    setPlayerSpawnPosition()
end

function love.update(dt)
    -- Move the player
    if love.keyboard.isDown("w") then
        player.y = player.y - playerSpeed
    end
    if love.keyboard.isDown("s") then
        player.y = player.y + playerSpeed
    end
    if love.keyboard.isDown("a") then
        player.x = player.x - playerSpeed
    end
    if love.keyboard.isDown("d") then
        player.x = player.x + playerSpeed
    end
end

-- Callback function used to draw on screen every frame
function love.draw()
    love.graphics.draw(playerSprite, player.x, player.y, playerAngle)
end
