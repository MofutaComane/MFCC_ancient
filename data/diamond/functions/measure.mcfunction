data merge entity @e[tag=thermometer,limit=1] {block_state:{Name:"minecraft:redstone_block"},transformation:{scale:[0.03f,5f,0f]},interpolation_duration:100,start_interpolation:1}
tag @e[tag=needle] add rotate
tag @e[tag=carbon] add rotate
execute as @e[tag=rotate] at @s run tp @s ~ ~ ~ ~ -45

schedule function diamond:zoom_-1 80t
