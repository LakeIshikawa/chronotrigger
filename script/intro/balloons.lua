-- Spawn balloons
local i = 1
local dx = {0, -0.5, 0, -0.5}
local dy = {0, 0, 0.5, 0.5}
while( true ) do
    local px = x+dx[1 + i%4]
    local py = y+dy[1 + i%4]

    local balloon = spawnObject("obj_balloonred"..i, "balloon", px, py)
    balloon.speed.y = 0.75
    balloon.lifetime = 25.0

    balloon = spawnObject("obj_balloonblue"..i, "balloon", px, py)
    balloon:setCharacterMap("blue");
    balloon.speed.x = -0.2
    balloon.speed.y = 1.0
    balloon.lifetime = 25.0

    balloon = spawnObject("obj_balloonyellow"..i, "balloon", px, py)
    balloon:setCharacterMap("yellow");
    balloon.speed.x = 0.8
    balloon.speed.y = 1.5
    balloon.lifetime = 25.0

    wait(2.0 + math.random())
    i=i+1
end