execute as @e[tag=head] run data merge entity @s {transformation:{scale:[1f,1f,4f],translation:[0f,0f,1f]},interpolation_duration:60,start_interpolation:1}

schedule function netherite:disp_up 20t
schedule function netherite:beam 70t
