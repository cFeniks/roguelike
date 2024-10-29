game = {}

function game:new()
    self.main_canvas = love.graphics.newCanvas(gw*4, gh*4)
    player:new(gw/2, gh/2)
    -- self.area:addGameObject('Player', gw/4, gh/4)
end

function game:update(dt)
    -- Camera.smoother = Camera.smooth.damped(5)
    -- Camera:lockPosition(dt, gw/2, gh/2)

    -- self.area:update(dt)
end

function game:draw()
    love.graphics.setCanvas(self.main_canvas)
    love.graphics.clear()
        player:draw()
    -- Camera:attach(0, 0, gw, gh)
    --     self.area:draw()
    -- Camera:detach()
    love.graphics.setCanvas()

    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.setBlendMode('alpha', 'premultiplied')
    love.graphics.draw(self.main_canvas, 0, 0, 0, sx, sy)
    love.graphics.setBlendMode('alpha')
    
end

-- function game:destroy()
--     self.area:destroy()
--     self.area = nil
-- end