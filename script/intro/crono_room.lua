-- Open/Close the window
windowOpen = false
openWindow = function(v)
    tly_window_opened:setVisible(v)
    tly_floorlight:setVisible(v)
    tly_floor:setVisible(not v)
    windowOpen = v
end

local mum_speed = 1.5
mum:face(RIGHT)
chrono:face(UP)
cat:face(RIGHT)

-- Text
text("Crono...", "Crono!", "Good morning, Crono!")
fadeIn(2.0)

-- Cat wakes up
coroutine.wrap(function()
    wait(2.5)
    cat:setDirectionalAnimation("sit")
end)()

-- Mum walks and talks
charWalkBy(mum, 1, 0, mum_speed)
text("MOM: Come on, sleepy head!\n Get up!")

-- Mum goes open the window
charWalkBy(mum, 0, 2, mum_speed)
mum:setDirectionalAnimation("work")
wait(0.5)

openWindow(true)

-- Chrono: shake the head
coroutine.wrap(function()
    for i = 1, 10 do
        doAnimation(chrono, "shakehead_up")
    end
    chrono:setDirectionalAnimation("idle")
end)()

wait(0.5)
mum:setDirectionalAnimation("idle")
text("MOM: Ah, Leene's Bell makes such beautiful music!")

charWalkBy(mum, 0, -2, mum_speed)
mum:face(RIGHT)
text("MOM: You were so excited about the Millenial Fair that you didn't sleep well, did you...?",
    "I want you to behave yourself today!")

charWalkBy(mum, -4, 0, mum_speed)
mum:face(RIGHT)
text("MOM: Let's get moving, now!")
charWalkBy(mum, 0, -3, mum_speed)

-- Cat goes downstairs
coroutine.wrap(function()
    local cat_speed = 2.5

    wait(3.0)
    cat:face(LEFT)
    doAnimation(cat, "jump_left")
    charWalkBy(cat, 0, -0.5, cat_speed)
    charWalkBy(cat, -3, 0, cat_speed)
    charWalkBy(cat, 0, -3.5, cat_speed)
    charWalkBy(cat, 4, -4, cat_speed)
    destroy(cat)
end)()

-- Chrono wakes up
coroutine.wrap(function()
    charWalkBy(chrono, -2, 0, 1.0)
    doAnimation(chrono, "getup")
    chrono:setDirectionalAnimation("idle")
    chrono:face(DOWN)
    setBgm("sound/bgm/peaceful_days.ogg")
    control(chrono)
end)()

-- Mum goes away
charWalkBy(mum, 4, -4, mum_speed)
destroy(mum)