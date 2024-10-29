---@diagnostic disable: lowercase-global
require 'player'
require 'area'
require 'game'

function love.load()
    player:new(10, 10)
    game:new()
end

function love.update(dt)
    player:update(dt)
end

function love.draw()
    -- player:draw()
    game:draw()
end