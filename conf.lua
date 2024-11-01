---@diagnostic disable: lowercase-global

gw = 480*3
gh = 270*3
sy = 1
sx = sy

function love.conf(t)
    t.identity = nil                                -- Save folder name (string)
    t.version = "11.5"                              -- Love2D version (string)
    t.console = false                               -- Console connection (bool)

    t.window.title = "Game"                         -- Window title (string)
    t.window.icon = nil                             -- Path to an icon (string)
    t.window.width = gw                             -- Window width (int)
    t.window.height = gh                            -- Window height (int)
    t.window.borderless = false                     -- Is window borderless (bool)
    t.window.resizable = true                       -- Is window resizable (bool)
    t.window.minwidth = gw                          -- Minimum window width (int)
    t.window.minheight = gh                         -- Minimum window heigth (int)
    t.window.fullscreen = false                     -- Enable fullscreen on (bool)
    t.window.fullscreentype = "exclusive"             -- Standart or desktop type[borderless fullscreen] (sting)
    t.window.vsync = true                           -- Vsync (bool)
    t.window.fsaa = 0                               -- Number of samples in multisample aliasing (full-screen anti-aliasing)
    t.window.display = 1                                   -- Monitor index to display (int)
    t.window.highdpi = false                               -- Enable highdpi on Retina display (bool)
    t.window.srgb = false                           -- Enable sRGB gamma-correction when drawing on a screen (bool)
    t.window.x = nil                                -- X position on current display (int)
    t.window.y = nil                                -- Y position on current display (int)

    t.modules.audio = true                        -- Enable audio module (bool)
    t.modules.event = true                          -- Enable event module (bool)
    t.modules.graphics = true                       -- Enable graphics module (bool)
    t.modules.image = true                          -- Enable image module (bool)
    t.modules.joystick = true                     -- Enable joystick module (bool)
    t.modules.keyboard = true                       -- Enable keyboard module (bool)
    t.modules.math = true                           -- Enable math module (bool)
    t.modules.mouse = true                          -- Enable mouse module (bool)
    t.modules.physics = true                      -- Enable physics module (bool)
    t.modules.sound = true                        -- Enable sound module (bool)
    t.modules.system = true                         -- Enable system module (bool)
    t.modules.timer = true                          -- Enable timer module (bool) // if false dt in love.update has a value of 0
    t.modules.window = true                         -- Enable window module (bool)
    t.modules.thread = true                         -- Enable thread module (bool)
end