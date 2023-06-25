tag @e remove down

summon minecart 9.5 5.5 13.5 {Tags:["cart"]}
summon item_display 9.5 5.5 13.5 {Tags:["item"]}
data merge entity @e[tag=item,limit=1] {item:{Count:1b,id:"minecraft:netherite_scrap"},transformation:{translation:[0f,1f,0f]}}
ride @e[tag=item,limit=1] mount @e[tag=cart,limit=1]
tag @e[tag=cart] remove cart
tag @e[tag=item] remove item