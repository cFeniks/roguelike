Area = Object:extend()

function Area:new(room)
    self.room = room
    self.w, self.h = 1300, 800
    self.x, self.y = gw/2-self.w/2, gh/2-self.h/2
end

function Area:draw()
    love.graphics.setBlendMode('alpha')
    love.graphics.setColor(0.58, 0.64, 0.90, .8)
    love.graphics.rectangle("fill", self.x, self.y, self.w, self.h )
    love.graphics.setColor(0.58, 0.64, 0.90, 1)
end

-- Area = Object:extend()

-- function Area:new(room)
--     self.room = room
--     self.w, self.h = 1300, 800
--     self.x, self.y = gw/2-self.w/2, gh/2-self.h/2
--     self.gameObjects = {}
-- end

-- function Area:update(dt)
--     for i = #self.gameObject, 1, -1 do
--         local gameObject = self.gameObjects[i]

--         gameObject:update(dt)

--         if gameObject.dead then
--             table.remove(self.gameObjects, i)
--         end
--     end
-- end

-- function Area:draw()
--     love.graphics.setBlendMode('alpha')
--     love.graphics.setColor(0.58, 0.64, 0.90, .8)
--     love.graphics.rectangle("fill", self.x, self.y, self.w, self.h )
--     love.graphics.setColor(0.58, 0.64, 0.90, 1)

--     for _, gameObject in ipairs(self.gameObjects) do
--         gameObject:draw()
--     end
-- end

-- function Area:AddPhysicsWorld()
--     self.world = love.physics.newWorld(0, 0, true)
-- end

-- function Area:AddGameObject(gameObjectType, x, y)
--     local gameObject = _G[gameObjectType](self, x or 0, y or 0)
--     table.insert(self.gameObjects, gameObject)
--     return gameObject
-- end

