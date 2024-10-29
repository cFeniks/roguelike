player = {}

function player:new(x, y)
    self.x, self.y = x, y
    self.r = 0
    self.v = 0
    
end

function player:update(dt)
    if love.keyboard.isDown("d") then
        self.x = self.x + 1.5
    end

    if love.keyboard.isDown("a") then
        self.x = self.x - 1.5
    end

    if love.keyboard.isDown("w") then
        self.y = self.y - 1
    end

    if love.keyboard.isDown("s") then
        self.y = self.y + 1
    end
end

function player:draw()
    love.graphics.circle("line", self.x, self.y, 10)
end