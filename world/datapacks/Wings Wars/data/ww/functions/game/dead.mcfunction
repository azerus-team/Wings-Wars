scoreboard players remove @s lifes 1
execute if score @s lifes matches ..0 run function ww:game/lose
execute if score HandCombat Settings matches 0 run effect give @s weakness 999999 255 true
execute if score Deathmatch game matches 1 run effect give @s[gamemode=adventure] wither 999999 0 true
execute if score Deathmatch game matches 1 run scoreboard players set @s witherTimer 0
effect give @s[gamemode=adventure] glowing 999999 255 true
effect give @s[tag=protection4] resistance 999999 0 true
effect give @s saturation 999999 255 true
clear @s firework_rocket
clear @s arrow
clear @s enchanted_book{PowerI:1b} 1
clear @s enchanted_book{PowerII:1b} 1
clear @s enchanted_book{Flame:1b} 1
scoreboard players set @s fly 0
scoreboard players set ArrowGiven game 0
execute if entity @s[gamemode=adventure] run function ww:game/max_arrow
tp @s @e[tag=Spawn,sort=random,limit=1]
execute if score FFA Settings matches 0 if score red game matches 1 if score yellow game matches 0 if score green game matches 0 if score blue game matches 0 run function ww:game/end_teams
execute if score FFA Settings matches 0 if score red game matches 0 if score yellow game matches 1 if score green game matches 0 if score blue game matches 0 run function ww:game/end_teams
execute if score FFA Settings matches 0 if score red game matches 0 if score yellow game matches 0 if score green game matches 1 if score blue game matches 0 run function ww:game/end_teams
execute if score FFA Settings matches 0 if score red game matches 0 if score yellow game matches 0 if score green game matches 0 if score blue game matches 1 run function ww:game/end_teams
execute if score FFA Settings matches 1 if score players game matches ..1 run function ww:game/end_ffa