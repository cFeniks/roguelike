---@diagnostic disable: lowercase-global

Object = require 'libraries/classic/classic'


require 'objects'
require 'area'
require 'game'
require 'UUID'
require 'player'

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