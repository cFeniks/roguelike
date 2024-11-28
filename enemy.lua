Enemies = GameObjects:extend()

function Enemies:new(x, y)
    self.x, self.y = x, y
    Enemies.super:new(x, y)
    self.speed = 2
    self.id = UUID(self.x)
end

function Enemies:update(dt)
end

function Enemies:draw()
    love.graphics.setColor(1, 0, 0, 1)
    love.graphics.rectangle("fill", self.x, self.y, 10, 10)
    -- love.graphics.print(self.id, 100, 100)
end