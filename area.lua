Area = Object:extend()

function Area:new(room)
    self.room = room
    self.w, self.h = 1300, 800
    self.x, self.y = gw/2-self.w/2, gh/2-self.h/2
end

function Area:draw()
    love.graphics.setBlendMode('alpha')
    love.graphics.setColor(0.58, 0.64, 0.90, .8)
    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h )
    love.graphics.setColor(0.58, 0.64, 0.90, 1)
end

