--YOU SIR ARE A CODE SNOOPER :) 

--Local Variables Caching:
local versionNum = "v0.0.35tf"
local vN_x = 650
local vN_y = 560

local lifeAmmount = 3

gameState = 1

camera = require 'lib/camera'
cam = camera()

anim8 = require 'lib/anim8'

flux = require 'lib/flux'

player = require 'title'

--Music Caching
mainWorldOGG = love.audio.newSource('music/titleSong.ogg', "stream" )
bossSongOGG = love.audio.newSource('music/bossSong.ogg', "stream")
titleMusOGG = love.audio.newSource('music/mainWorldSong.mp3', "stream")

--Mostly Image Caching
love.graphics.setDefaultFilter("nearest", "nearest")

love.mouse.setCursor(cursorShit)

function imgCacheing()
    --Pixel Perfect Settings
    love.graphics.setDefaultFilter("nearest", "nearest")
    --Actual Cacheing
        signIMG = love.graphics.newImage('sprites/signIMG.png')

        cursorShitImg = love.image.newImageData('sprites/mouseCursorIMG.png', 16, 16)

        cursorIMG = love.graphics.newImage('sprites/mouseCursorIMG.png')

        cursorShit = love.mouse.newCursor(cursorShitImg)
    --End of Cacheing
end

function love.load()
    titleLoad()

    introTimer = 336

    introFade = love.graphics.newVideo('introCut.ogv')

    imgCacheing()

    love.mouse.setCursor(cursorShit)

    player = {}
        player.x = 194.9
        player.y = 75.1
        player.speed = 250

    --Blocking player table from extending to avoid confusion

    --Creation of the font for the game
    gameFont = love.graphics.newFont(30)
    --Play the title screen music
    love.audio.play(titleMusOGG)
    titleMusOGG:setLooping(true)
 
end

function love.update(dt)
    flux.update(dt)
    introTimer = introTimer - 0.01* dt
end

function love.draw()

    love.graphics.setFont(gameFont)

    if gameState == 2 then
        love.graphics.print(versionNum, vN_x, vN_y)
    end
    if gameState == 1 then
        titleDraw()
    end
end