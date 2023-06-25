#着席,再生トリガー
execute as @e[tag=chair] if data entity @s interaction run function diamond:chair

#画面位置
execute as @e[tag=display,tag=0] at @e[tag=display,tag=center] run tp ~0.5 ~0.5 ~
execute as @e[tag=display,tag=1] at @e[tag=display,tag=center] run tp ~0.5 ~-0.5 ~
execute as @e[tag=display,tag=2] at @e[tag=display,tag=center] run tp ~-0.5 ~0.5 ~
execute as @e[tag=display,tag=3] at @e[tag=display,tag=center] run tp ~-0.5 ~-0.5 ~

#上昇下降
execute as @e[tag=up] at @s run tp ~ ~0.1 ~
execute as @e[tag=down] at @s run tp ~ ~-0.1 ~

#回転
execute as @e[tag=rotate] store result entity @s Rotation[1] float 1.4 run data get entity @s Rotation[1]

