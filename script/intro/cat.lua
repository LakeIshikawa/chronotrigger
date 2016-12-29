-- Patrol
local update = function ()
    local cat_speed = 1.5
    while( true ) do
        charWalkBy(this, 1, 0, cat_speed)
        charWalkBy(this, -1, 0, cat_speed)
    end
end

-- Talk event
local talk = function ()
    pause(this)

    -- Save speed
    spx = this.speed.x
    spy = this.speed.y

    this.speed:setZero()
    text("Meaow")

    -- Restore speed
    this.speed:set(spx, spy)
    resume(this)
end

this:addEvent("talk", talk)
this:addEvent("update", update)
