execute as @e[type=glow_item_frame] run ride @s dismount
tp @e[type=glow_item_frame] 0 0 0

execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:20}}} run ride @s mount @e[tag=0,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:21}}} run ride @s mount @e[tag=1,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:22}}} run ride @s mount @e[tag=2,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:23}}} run ride @s mount @e[tag=3,limit=1]

summon item_display 2.0 4.0 2.91 {Tags:["stone","deposit"],item:{Count:1b,id:"minecraft:white_concrete"}}
summon item_display 2.0 4.0 2.89 {Tags:["deepslate","deposit"],item:{Count:1b,id:"minecraft:gray_concrete"}}
summon item_display 2.0 4.0 2.88 {Tags:["bedrock","deposit"],item:{Count:1b,id:"minecraft:bedrock"}}
summon item_display 2.0 4.0 2.87 {Tags:["netherrack","deposit"],item:{Count:1b,id:"minecraft:netherrack"}}
execute as @e[tag=deposit] run data merge entity @s {transformation:{scale:[2.0f,0f,0f]}}
data merge entity @e[tag=stone,limit=1] {transformation:{scale:[2.0f,0.5f,0f],translation:[0f,0.25f,0f]}}

schedule function netherite:deposit 40t
