execute if score Deathmatch game matches 1 run scoreboard players add @a witherTimer 1
execute if score Deathmatch game matches 1 run scoreboard players set @a[scores={witherTimer=20..}] witherTimer 0

execute as @e[type=item,tag=!BonusItem] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,tag=!BonusItem] at @s run tp @s @p

execute unless entity @e[type=item,tag=BonusItem] run function ww:game/bonus_up
execute if entity @e[type=item,tag=BonusItem,limit=1] run function ww:game/bonus_down

bossbar set bonus_timer name [{"text":"Bonusbar [","color":"green"},{"score":{"name":"bonusLeftAmount","objective":"game"}},"]"]

execute as @e[type=item,tag=BonusItem] at @s run particle happy_villager ~ ~ ~ 0 20 0 0 25 force

execute if score Ballistics Settings matches 0 as @e[type=arrow,tag=!NoGravity] run data merge entity @s {NoGravity:1,Tags:["NoGravity"]}

execute as @a[gamemode=adventure] store result score @s arrow run clear @s arrow 0
execute as @a[gamemode=adventure] if score @s arrow < MaxArrows Settings run scoreboard players add @s arrowTimer 1
execute as @a[gamemode=adventure] if score @s arrowTimer >= ArrowTime Settings run function ww:game/arrow

scoreboard players add @a[gamemode=adventure] fly 50
execute as @a[gamemode=adventure] if score @s fly matches 50000.. run function ww:game/firework
execute as @a[gamemode=adventure] run scoreboard players operation @s flyPercents = @s fly
execute as @a[gamemode=adventure] run scoreboard players operation @s flyPercents /= Const500 global
title @a[gamemode=adventure] actionbar [{"text":"Your firework charge: ","color":"gold"},{"score":{"name":"*","objective":"flyPercents"},"color":"dark_red"},{"text":"%","color":"gold"}]

kill @e[type=arrow,nbt={inGround:1b}]
scoreboard players add @e[type=arrow] zone 1
kill @e[type=arrow,scores={zone=300..}]

execute as @a[gamemode=adventure,scores={additionalLife=1..}] run function ww:game/add_life
execute as @a[gamemode=adventure,scores={protection=1..}] run function ww:game/add_protection

execute as @a[gamemode=adventure] if data entity @s {SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:1s}]}}} unless data entity @s {Inventory:[{Slot:-106b,tag:{PowerI:1b}}]} run function ww:game/unenchant
execute as @a[gamemode=adventure] if data entity @s {SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:2s}]}}} unless data entity @s {Inventory:[{Slot:-106b,tag:{PowerII:1b}}]} run function ww:game/unenchant
execute as @a[gamemode=adventure] if data entity @s {SelectedItem:{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}} unless data entity @s {Inventory:[{Slot:-106b,tag:{Flame:1b}}]} run function ww:game/unenchant
execute as @a[gamemode=adventure] if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:bow",tag:{Enchantments:[{}]}}]} run function ww:game/unenchant

execute as @a[gamemode=adventure] if data entity @s {SelectedItem:{id:"minecraft:bow"},Inventory:[{Slot:-106b,tag:{PowerI:1b}}]} run enchant @s power
execute as @a[gamemode=adventure] if data entity @s {SelectedItem:{id:"minecraft:bow"},Inventory:[{Slot:-106b,tag:{PowerII:1b}}]} run enchant @s power 2
execute as @a[gamemode=adventure] if data entity @s {SelectedItem:{id:"minecraft:bow"},Inventory:[{Slot:-106b,tag:{Flame:1b}}]} run enchant @s flame

execute as @a[scores={shot=1..},gamemode=adventure] run function ww:game/shot

execute if score timer game = DeathmatchTime Settings run function ww:game/deathmatch
execute if score Deathmatch game matches 0 run scoreboard players add timer game 1

execute as @a[scores={damageTaken=1..}] run function ww:game/damage

scoreboard players remove @a zone 1
execute positioned 1428.0 70 1428.0 run scoreboard players set @a[dx=143,dy=140,dz=143] zone 140
execute as @a[scores={zone=..139,dead=1..}] run function ww:game/zone

execute as @a[gamemode=adventure] if score @s dead matches 1 run function ww:game/dead

scoreboard players operation playersWas game = players game
execute store result score players game if entity @a[gamemode=adventure]

execute if score players game < playersWas game run function ww:game/left