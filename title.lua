love.graphics.setDefaultFilter("nearest", "nearest")

local titleBg = love.graphics.newImage('sprites/titleBG.png')


function titleLoad()
    print("Compiled Correctly!")
    
    titleLogoTable = {}
    titleLogoTable.x = 90
    titleLogoTable.y = 0

    titleLogo = love.graphics.newImage('sprites/titleIcon.png')
    table.insert(titleLogoTable, titleLogo)
end

function titleUpdate(dt)
    flux.update(dt)
end

function titleDraw()
    local lg = love.graphics
    love.graphics.draw(titleBg, 0, 0)
    love.graphics.draw(titleLogo, 90, 0, nil, 5, 5)
    love.graphics.print("Press Enter to Begin!", 250, 500)
    flux.to(titleLogoTable, 4, { x = 90, y = 40 })
end