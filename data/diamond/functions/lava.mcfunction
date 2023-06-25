kill @e[tag=frame]
data merge entity @e[tag=lava,limit=1] {transformation:{scale:[2f,0f,0f],translation:[0f,0f,0f]},interpolation_duration:30,start_interpolation:1}

schedule function diamond:disp_down 70
