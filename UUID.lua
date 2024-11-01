function UUID()
    math.randomseed(os.time())
    local template = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"
    return string.gsub(template, "[xy]", function (f)
        local st = (f == 'x') and math.random(0, 0xf) or math.random(8, 0xb)
        return string.format('%x', st)
    end)
end