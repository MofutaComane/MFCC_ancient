execute as @e[type=glow_item_frame] run ride @s dismount
tp @e[type=glow_item_frame] 0 0 0

execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:0}}} run ride @s mount @e[tag=0,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:1}}} run ride @s mount @e[tag=1,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:2}}} run ride @s mount @e[tag=2,limit=1]
execute as @e[type=glow_item_frame] if data entity @s {Item:{tag:{map:3}}} run ride @s mount @e[tag=3,limit=1]

schedule function diamond:zoom_1 30t
