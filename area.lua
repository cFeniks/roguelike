area = {}

function area:new(room)
    self.room = room
    self.x, self.y = gw/3, gh/4
    self.w, self.h = 1300, 800
end

function area:draw()
    love.graphics.setBlendMode('alpha')
    love.graphics.setColor(0.58, 0.64, 0.90, .8)
    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h )
    love.graphics.setColor(0.58, 0.64, 0.90, 1)
end

