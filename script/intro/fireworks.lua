-- Spawn fireworks
local i = 1
local dx = {0, -1, 0, -1}
local dy = {0, 0, 0.5, 0.5}
while( true ) do
    local px = x+dx[1 + i%4]
    local py = y+dy[1 + i%4]

    local firework = spawnObject("obj_firework"..i, "firework", px, py)
    firework.speed.x = 0.4
    firework.speed.y = 0.4
    firework.lifetime = 1.0
    wait(math.random())
    i=i+1
end