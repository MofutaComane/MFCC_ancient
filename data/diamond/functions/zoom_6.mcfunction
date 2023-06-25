execute as @e[tag=arrow] run data merge entity @s {item:{id:"minecraft:air",Count:1b}}
execute as @e[tag=frame] run data merge entity @s {transformation:{scale:[0f,2f,0.05f],translation:[0f,0f,-0.05f]},interpolation_duration:10,start_interpolation:1}

schedule function diamond:map_4 5t
