kill @e[type=block_display]
kill @e[type=item_display]
kill @e[type=interaction]
tp @e[type=glow_item_frame] 0 0 0

#ガラス
summon item_display 2.5 7 4.5 {item:{Count:1b,id:"minecraft:glass_pane"},Tags:["glass"]}
data merge entity @e[tag=glass,limit=1] {transformation:{scale:[52f,6f,1f]}}
#炉
summon block_display 3.0 7.0 14.0 {Tags:["body"],Rotation:[-90f,0f]}
summon block_display 3.0 7.0 14.0 {Tags:["head"],Rotation:[-90f,0f]}
summon block_display 16.0 7.0 13.0 {Tags:["body"],Rotation:[90f,0f]}
summon block_display 16.0 7.0 13.0 {Tags:["head"],Rotation:[90f,0f]}
execute as @e[tag=body] run data merge entity @s {block_state:{Name:"minecraft:piston",Properties:{extended:"true",facing:"south"}}}
execute as @e[tag=head] run data merge entity @s {block_state:{Name:"minecraft:piston_head",Properties:{facing:"south"}},transformation:{scale:[1f,1f,0.7f],translation:[0f,0f,0.2f]}}
summon item_display 5.5 11.5 13.5 {Tags:["beacon"],Rotation:[-90f,135f]}
summon item_display 5.5 11.5 13.5 {Tags:["beam"],Rotation:[-90f,135f]}
summon item_display 13.5 11.5 13.5 {Tags:["beacon"],Rotation:[90f,135f]}
summon item_display 13.5 11.5 13.5 {Tags:["beam"],Rotation:[90f,135f]}
summon item_display 5.5 3.5 13.5 {Tags:["beacon"],Rotation:[-90f,45f]}
summon item_display 5.5 3.5 13.5 {Tags:["beam"],Rotation:[-90f,45f]}
summon item_display 13.5 3.5 13.5 {Tags:["beacon"],Rotation:[90f,45f]}
summon item_display 13.5 3.5 13.5 {Tags:["beam"],Rotation:[90f,45f]}
execute as @e[tag=beacon] run data merge entity @s {item:{Count:1b,id:"minecraft:beacon"}}
execute as @e[tag=beam] run data merge entity @s {item:{Count:1b,id:"minecraft:raw_gold_block"},transformation:{scale:[0f,0f,0f]}}
#椅子
summon interaction 3.0 3.7 1.3 {Tags:["chair"],response:1b}
#画面
summon item_display 2.0 2.9 2.99 {Tags:["display","center"]}
summon item_display 0 0 0 {Tags:["display","0"]}
summon item_display 0 0 0 {Tags:["display","1"]}
summon item_display 0 0 0 {Tags:["display","2"]}
summon item_display 0 0 0 {Tags:["display","3"]}

execute as @e[tag=display,tag=!center] run data merge entity @s {item:{Count:1b,id:"minecraft:black_concrete"},transformation:{scale:[1f,1f,0.06f]}}
