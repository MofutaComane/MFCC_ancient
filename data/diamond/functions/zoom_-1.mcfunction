execute as @e[tag=frame] run data merge entity @s {transformation:{scale:[0f,0.25f,0.05f]}}
data merge entity @e[tag=top,limit=1] {transformation:{translation:[0f,0f,1.55f]}}
data merge entity @e[tag=left,limit=1] {transformation:{translation:[0f,-0.8f,0.75f]}}
data merge entity @e[tag=right,limit=1] {transformation:{translation:[0f,-0.8f,0.75f]}}
execute as @e[tag=frame] run data merge entity @s {interpolation_duration:10,start_interpolation:1}

kill @e[tag=measure]

schedule function diamond:map_8 8t
