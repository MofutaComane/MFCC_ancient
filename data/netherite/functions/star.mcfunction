summon minecart 3.5 19.5 7.5 {Tags:["cart"]}
summon item_display ~ ~ ~ {Tags:["item"]}
data merge entity @e[tag=item,limit=1] {item:{Count:1b,id:"minecraft:nether_star"},transformation:{translation:[0f,1f,0f]}}
ride @e[tag=item,limit=1] mount @e[tag=cart,limit=1]
tag @e[tag=cart] remove cart
tag @e[tag=item] remove item

summon minecart 3.5 29.5 7.5 {Tags:["cart"]}
summon item_display ~ ~ ~ {Tags:["item"]}
data merge entity @e[tag=item,limit=1] {item:{Count:1b,id:"minecraft:nether_star"},transformation:{translation:[0f,1f,0f]}}
ride @e[tag=item,limit=1] mount @e[tag=cart,limit=1]
tag @e[tag=cart] remove cart
tag @e[tag=item] remove item

summon minecart 3.5 39.5 7.5 {Tags:["cart"]}
summon item_display ~ ~ ~ {Tags:["item"]}
data merge entity @e[tag=item,limit=1] {item:{Count:1b,id:"minecraft:nether_star"},transformation:{translation:[0f,1f,0f]}}
ride @e[tag=item,limit=1] mount @e[tag=cart,limit=1]
tag @e[tag=cart] remove cart
tag @e[tag=item] remove item

schedule function netherite:press 160t
