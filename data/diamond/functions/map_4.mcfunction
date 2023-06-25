execute as @e[type=glow_item_frame] run ride @s dismount
tp @e[type=glow_item_frame] 0 0 0

execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:4}}} run ride @s mount @e[tag=0,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:5}}} run ride @s mount @e[tag=1,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:6}}} run ride @s mount @e[tag=2,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:7}}} run ride @s mount @e[tag=3,limit=1]

summon block_display 2.741 4.7 2.9 {Tags:["thermometer","measure"]}
data merge entity @e[tag=thermometer,limit=1] {block_state:{Name:"minecraft:redstone_block"},transformation:{scale:[0.03f,0.25f,0f]}}
summon block_display 1.261 5.343 2.9 {Tags:["needle","measure"],Rotation:[-90f,0f]}
data merge entity @e[tag=needle,limit=1] {block_state:{Name:"minecraft:black_concrete"},transformation:{scale:[0f,0.02f,0.15f]}}
summon item_display 2.0 5.6 2.9 {Tags:["carbon","measure"],Rotation:[90f,0f]}
data merge entity @e[tag=carbon,limit=1] {item:{Count:1b,id:"minecraft:charcoal"},transformation:{scale:[0.3f,0.3f,0f],left_rotation:{axis:[0f,1f,0f],angle:1.5708f}}}

schedule function diamond:measure 30t
