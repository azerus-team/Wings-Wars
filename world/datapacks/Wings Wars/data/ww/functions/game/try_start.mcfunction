execute store success score red game if entity @a[team=red,limit=1]
execute store success score yellow game if entity @a[team=yellow,limit=1]
execute store success score green game if entity @a[team=green,limit=1]
execute store success score blue game if entity @a[team=blue,limit=1]
execute store result score players game if entity @a[gamemode=adventure]

scoreboard players set canBeStarted game 0

execute if score FFA Settings matches 0 if score red game matches 1 if score yellow game matches 1 run scoreboard players set canBeStarted game 1
execute if score FFA Settings matches 0 if score red game matches 1 if score green game matches 1 run scoreboard players set canBeStarted game 1
execute if score FFA Settings matches 0 if score red game matches 1 if score blue game matches 1 run scoreboard players set canBeStarted game 1
execute if score FFA Settings matches 0 if score yellow game matches 1 if score red game matches 1 run scoreboard players set canBeStarted game 1
execute if score FFA Settings matches 0 if score yellow game matches 1 if score green game matches 1 run scoreboard players set canBeStarted game 1
execute if score FFA Settings matches 0 if score yellow game matches 1 if score blue game matches 1 run scoreboard players set canBeStarted game 1
execute if score FFA Settings matches 0 if score green game matches 1 if score red game matches 1 run scoreboard players set canBeStarted game 1
execute if score FFA Settings matches 0 if score green game matches 1 if score yellow game matches 1 run scoreboard players set canBeStarted game 1
execute if score FFA Settings matches 0 if score green game matches 1 if score blue game matches 1 run scoreboard players set canBeStarted game 1
execute if score FFA Settings matches 0 if score blue game matches 1 if score red game matches 1 run scoreboard players set canBeStarted game 1
execute if score FFA Settings matches 0 if score blue game matches 1 if score yellow game matches 1 run scoreboard players set canBeStarted game 1
execute if score FFA Settings matches 0 if score blue game matches 1 if score green game matches 1 run scoreboard players set canBeStarted game 1

execute if score FFA Settings matches 1 if score players game matches 2.. run scoreboard players set canBeStarted game 1

execute if score canBeStarted game matches 0 run tellraw @s {"text":"Not enough players!","color":"red"}

execute if score IsMapGenerated global matches 0 run scoreboard players set canBeStarted game 0
execute if score IsMapGenerated global matches 0 run tellraw @a {"text":"No map is generated!","color":"red"}

execute if score canBeStarted game matches 1 run function ww:game/pre_start