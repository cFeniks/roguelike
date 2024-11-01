GameObjects = Object:extend()

function GameObjects:new(x, y)
    self.x, self.y = x, y
    self.w, self.y = 12, 12
    self.id = UUID()
    self.dead = false
end

function GameObjects:update(dt)
    
end

function GameObjects:draw()

end