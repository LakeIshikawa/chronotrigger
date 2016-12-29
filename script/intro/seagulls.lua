-- Spawn 30 seagulls
for i = 1, 30 do
    local x = math.random(-5, 5);
    local seagull = spawnObject("obj_seagull"..i, "seagull", camera.position.x + x, camera.position.y - viewport:getWorldHeight()/2 - 1)
    local angle = math.pi/4 + math.random() * math.pi/2
    local speed = math.random(4.0, 5.5)

    seagull.lifetime = 10
    seagull.z = 5
    seagull.speed.y = speed * math.sin(angle)
    seagull.speed.x = speed * math.cos(angle)

    -- Wait a bit
    wait(0.2)
end