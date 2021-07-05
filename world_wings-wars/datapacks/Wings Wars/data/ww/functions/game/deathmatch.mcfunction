scoreboard players set Deathmatch game 1
effect give @a[gamemode=adventure] wither 999999 0 true
execute if score Deathmatch game matches 1 run scoreboard players set @a witherTimer 0
title @a title {"text":"DEATHMATCH","color":"dark_red"}
tellraw @a {"text":"DEATHMATCH","color":"dark_red"}
playsound minecraft:entity.wither.spawn master @a
scoreboard players add timer game 1