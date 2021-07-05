scoreboard players operation MaxRandom global = BonusAmount generate
function ww:random
data modify storage ww Buffer set from storage ww Bonuses
scoreboard players set current_element global 0
execute if score current_element global < RandomResult global run function ww:get_element
data modify storage ww Bonus set from storage ww Buffer[0]
data remove storage ww Buffer
execute at @e[tag=Bonus,sort=random,limit=1] run summon item ~ ~ ~ {Item:{id:"stone",Count:1},Glowing:1,Tags:["BonusItem","new"],CustomNameVisible:1,NoGravity:1,Age:-32768}
execute as @e[tag=BonusItem,tag=new] run data modify entity @s {} merge from storage ww Bonus
execute as @e[tag=BonusItem,tag=gold] run team join goldColor @s
execute as @e[tag=BonusItem,tag=red] run team join redColor @s
execute as @e[tag=BonusItem,tag=gray] run team join grayColor @s
execute as @e[tag=BonusItem,tag=aqua] run team join aquaColor @s
execute as @e[tag=BonusItem,tag=purple] run team join purpleColor @s
scoreboard players add BonusSpawned game 1
execute if score BonusSpawned game < BonusAmount game run function ww:game/spawn_bonus