Player = GameObjects:extend()

function Player:new(x, y)
    Player.super:new(x, y)
    self.x, self.y = x, y
    self.r = 0
    self.v = 0
end

function Player:update(dt)
    if love.keyboard.isDown("d") then
        self.x = self.x + 3
    end

    if love.keyboard.isDown("a") then
        self.x = self.x - 3
    end

    if love.keyboard.isDown("w") then
        self.y = self.y - 3

        if love.keyboard.isDown("a") then
            self.y = self.y + 1
            self.x = self.x + 1
        end

        if love.keyboard.isDown("d") then
            self.y = self.y + 1
            self.x = self.x - 1
        end
    end

    if love.keyboard.isDown("s") then
        self.y = self.y + 3

        if love.keyboard.isDown("a") then
            self.y = self.y - 1
            self.x = self.x + 1
        end

        if love.keyboard.isDown("d") then
            self.y = self.y - 1
            self.x = self.x - 1
        end
    end

end

function Player:draw()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.circle("line", self.x, self.y, 10)
end