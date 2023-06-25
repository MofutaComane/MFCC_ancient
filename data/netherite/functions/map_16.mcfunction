execute as @e[type=glow_item_frame] run ride @s dismount
tp @e[type=glow_item_frame] 0 0 0

execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:16}}} run ride @s mount @e[tag=0,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:17}}} run ride @s mount @e[tag=1,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:18}}} run ride @s mount @e[tag=2,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:19}}} run ride @s mount @e[tag=3,limit=1]

summon item_display 2.0 4.1 2.9 {Tags:["frame","bottom"],Rotation:[-90f,-90f]}
summon item_display 2.0 5.9 2.9 {Tags:["frame","top"],Rotation:[90f,90f]}
summon item_display 2.9 5.0 2.9 {Tags:["frame","left"],Rotation:[90f,0f]}
summon item_display 1.1 5.0 2.9 {Tags:["frame","right"],Rotation:[-90f,0f]}
execute as @e[tag=frame] run data merge entity @s {item:{id:"minecraft:red_concrete",Count:1b},transformation:{scale:[0f,2f,0.05f],translation:[0f,0f,-0.05f]}}

data merge entity @e[tag=gravel,limit=1] {transformation:{scale:[0f,0f,0f],translation:[0f,1f,0f]},interpolation_duration:0,start_interpolation:1}

schedule function netherite:zoom_-1 40t

