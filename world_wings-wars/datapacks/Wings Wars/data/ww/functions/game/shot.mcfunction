scoreboard players set MaxRandom global 30
function ww:random
execute if score RandomResult global matches 0 if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:enchanted_book"}]} at @s run playsound entity.item.break player @a ~ ~ ~ 1 1
execute if score RandomResult global matches 0 if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:enchanted_book"}]} run item replace entity @s weapon.offhand with air
scoreboard players reset @s shot