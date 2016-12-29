while( true ) do
    -- Spawn 5 seagulls
    for i = 1, 5 do
        local x = math.random(-5, 5);
        local seagull = spawnObject("obj_seagull"..i, "seagull", camera.position.x + x, camera.position.y - viewport:getWorldHeight()/2 + 1)
        local angle = math.pi/4 + math.random() * math.pi/2
        local speed = math.random(3.0, 4.5)

        seagull.z = 5
        seagull.speed.y = speed * math.sin(angle)
        seagull.speed.x = speed * math.cos(angle)
    end

    -- Wait 10 seconds
    wait(15.0)
end