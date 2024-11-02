Player = GameObjects:extend()

function Player:new(x, y)
    Player.super:new(x, y)
    self.speed = 3
    self.r = 0
    self.v = 0
end

function Player:update(dt)
    local left = bool_to_num(love.keyboard.isDown("a"))
    local right = bool_to_num(love.keyboard.isDown("d"))
    local up = bool_to_num(love.keyboard.isDown("w"))
    local down = bool_to_num(love.keyboard.isDown("s"))

    local hor = right - left
    local ver = up - down

    if hor ~= 0 and ver ~= 0 then
        self.x, self.y = self.x + hor * self.speed * 0.7, self.y - ver * self.speed * 0.7 -- Diagonal movement
    else
        self.x, self.y = self.x + hor * self.speed, self.y - ver * self.speed -- Normal movement
    end
end

function Player:draw()
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.circle("line", self.x, self.y, 10)
end