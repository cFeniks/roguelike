GameObjects = Object:extend()

function GameObjects:new(x, y)
    
    self.dead = false
    self.gameObject = {}
    table.insert(self.gameObject, self.id)
end

function GameObjects:update(dt)
    
end

function GameObjects:draw()
    
end

function GameObjects:AddGameObject()
    
end