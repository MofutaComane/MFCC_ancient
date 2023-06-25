kill @e[tag=frame]
#地層の堆積の表現
data merge entity @e[tag=stone,limit=1] {transformation:{scale:[2f,2f,0f],translation:[0f,1f,0f]},interpolation_duration:100,start_interpolation:1}
data merge entity @e[tag=deepslate,limit=1] {transformation:{scale:[2f,1.2f,0f],translation:[0f,0.6f,0f]},interpolation_duration:90,start_interpolation:10}
data merge entity @e[tag=bedrock,limit=1] {transformation:{scale:[2f,0.7f,0f],translation:[0f,0.35f,0f]},interpolation_duration:50,start_interpolation:50}
data merge entity @e[tag=netherrack,limit=1] {transformation:{scale:[2f,0.5f,0f],translation:[0f,0.25f,0f]},interpolation_duration:50,start_interpolation:50}

schedule function netherite:disp_down 140t
