Player = GameObjects:extend()

function Player:new(x, y)
    self.x, self.y = x, y
    Player.super:new(x, y)
    self.speed = 3
    self.r = 0
    self.v = 0
    self.id = UUID(self.x)
end

function Player:update(dt)
    local left = bool_to_num(love.keyboard.isDown("a"))
    local right = bool_to_num(love.keyboard.isDown("d"))
    local up = bool_to_num(love.keyboard.isDown("w"))
    local down = bool_to_num(love.keyboard.isDown("s"))

    local hor = right - left -- -1 0 1, where -1 = moving left, 1 = moving right and 0 is not moving
    local ver = up - down    -- -1 0 1, where -1 = moving down, 1 = moving up and 0 is not moving

    if hor ~= 0 and ver ~= 0 then
        self.x, self.y = self.x + hor * self.speed * 0.7, self.y - ver * self.speed * 0.7 -- Diagonal movement
    else
        self.x, self.y = self.x + hor * self.speed, self.y - ver * self.speed -- Normal movement
    end
end

function Player:draw()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.circle("line", self.x, self.y, 10)
    -- love.graphics.print(self.id, 200, 200)
end