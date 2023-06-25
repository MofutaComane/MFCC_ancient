tag @e[tag=center] add down
execute as @e[type=glow_item_frame] run ride @s dismount
tp @e[type=glow_item_frame] 0 0 0

execute as @e[tag=beam] run data merge entity @s {transformation:{scale:[0f,0f,0f],translation:[0f,2f,0f]}}
execute as @e[tag=head] run data merge entity @s {transformation:{scale:[1f,1f,0.7f],translation:[0f,0f,0.2f]},interpolation_duration:60,start_interpolation:1}

schedule function diamond:done 21t
