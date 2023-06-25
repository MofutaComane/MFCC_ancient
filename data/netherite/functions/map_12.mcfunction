execute as @e[type=glow_item_frame] run ride @s dismount
tp @e[type=glow_item_frame] 0 0 0

execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:12}}} run ride @s mount @e[tag=0,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:13}}} run ride @s mount @e[tag=1,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:14}}} run ride @s mount @e[tag=2,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:15}}} run ride @s mount @e[tag=3,limit=1]

summon item_display 2.0 4.0 2.89 {Tags:["gravel"]}
data merge entity @e[tag=gravel,limit=1] {item:{Count:1b,id:"minecraft:gravel"},transformation:{scale:[2.0f,0f,0f],translation:[0f,0f,0f]}}

schedule function netherite:burried 30t
