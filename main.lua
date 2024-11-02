---@diagnostic disable: lowercase-global

Object = require 'libraries/classic/classic'


require 'objects'
require 'area'
require 'game'
require 'UUID'
require 'player'

function bool_to_num(value)
    return value and 1 or 0
end

function love.load()
    Player:new(10, 10)
    Game:new()
end

function love.update(dt)
    Player:update(dt)
end

function love.draw()
    -- player:draw()
    Game:draw()
end