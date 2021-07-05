execute store success score red game if entity @a[tag=red,gamemode=adventure,limit=1]
execute store success score yellow game if entity @a[tag=yellow,gamemode=adventure,limit=1]
execute store success score green game if entity @a[tag=green,gamemode=adventure,limit=1]
execute store success score blue game if entity @a[tag=blue,gamemode=adventure,limit=1]
execute store result score players game if entity @a[gamemode=adventure]

execute if score FFA Settings matches 0 if score red game matches 1 if score yellow game matches 0 if score green game matches 0 if score blue game matches 0 run function ww:game/end_teams
execute if score FFA Settings matches 0 if score red game matches 0 if score yellow game matches 1 if score green game matches 0 if score blue game matches 0 run function ww:game/end_teams
execute if score FFA Settings matches 0 if score red game matches 0 if score yellow game matches 0 if score green game matches 1 if score blue game matches 0 run function ww:game/end_teams
execute if score FFA Settings matches 0 if score red game matches 0 if score yellow game matches 0 if score green game matches 0 if score blue game matches 1 run function ww:game/end_teams
execute if score FFA Settings matches 1 if score players game matches ..1 run function ww:game/end_ffa