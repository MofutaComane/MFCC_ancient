summon item_display 2.0 4.1 2.9 {Tags:["frame","bottom"],Rotation:[-90f,-90f]}
summon item_display 2.0 5.9 2.9 {Tags:["frame","top"],Rotation:[90f,90f]}
summon item_display 2.9 5.0 2.9 {Tags:["frame","left"],Rotation:[90f,0f]}
summon item_display 1.1 5.0 2.9 {Tags:["frame","right"],Rotation:[-90f,0f]}
execute as @e[tag=frame] run data merge entity @s {item:{id:"minecraft:red_concrete",Count:1b},transformation:{scale:[0f,0.25f,0.05f]}}
data merge entity @e[tag=top,limit=1] {transformation:{translation:[0f,0f,1.55f]}}
data merge entity @e[tag=left,limit=1] {transformation:{translation:[0f,-0.8f,0.75f]}}
data merge entity @e[tag=right,limit=1] {transformation:{translation:[0f,-0.8f,0.75f]}}

summon item_display 2.0 4.8 2.9 {Tags:["arrow","a"]}
summon item_display 2.0 4.55 2.9 {Tags:["arrow","b"]}
execute as @e[tag=arrow] run data merge entity @s {item:{id:"minecraft:red_concrete",Count:1b}}
data merge entity @e[tag=arrow,tag=a,limit=1] {transformation:{scale:[0.05f,0.6f,0f]}}
data merge entity @e[tag=arrow,tag=b,limit=1] {transformation:{scale:[0.15f,0.05f,0f]}}

schedule function diamond:zoom_2 10t
