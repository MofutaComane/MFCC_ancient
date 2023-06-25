execute as @e[type=glow_item_frame] run ride @s dismount
tp @e[type=glow_item_frame] 0 0 0

execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:8}}} run ride @s mount @e[tag=0,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:9}}} run ride @s mount @e[tag=1,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:10}}} run ride @s mount @e[tag=2,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:11}}} run ride @s mount @e[tag=3,limit=1]

summon item_display 2.0 4.0 2.91 {Tags:["lava"]}
data merge entity @e[tag=lava,limit=1] {item:{id:"minecraft:orange_concrete",Count:1b},transformation:{scale:[2f,0.5f,0f],translation:[0f,0.25f,0f]}}

schedule function diamond:lava 40t
