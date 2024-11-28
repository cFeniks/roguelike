---@diagnostic disable: lowercase-global

Object = require 'libraries/classic/classic'
Timer = require 'libraries/hump/timer'

require 'objects'
require 'area'
require 'game'
require 'UUID'
require 'player'
require 'enemy'

function bool_to_num(value)
    return value and 1 or 0
end

function love.load()
    Player:new(10, 10)
    Game:new()
    Timer = Timer.new()
    a = 0
end

function love.update(dt)
    Player:update(dt)
    a = a + dt
end

function love.draw()
    Player:draw()
    Game:draw()
end