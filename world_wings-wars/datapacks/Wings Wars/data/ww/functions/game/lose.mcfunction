clear @s
gamemode spectator @s
title @s title {"text":"You lost!","color":"red"}

execute store success score red game if entity @a[tag=red,gamemode=adventure,limit=1]
execute store success score yellow game if entity @a[tag=yellow,gamemode=adventure,limit=1]
execute store success score green game if entity @a[tag=green,gamemode=adventure,limit=1]
execute store success score blue game if entity @a[tag=blue,gamemode=adventure,limit=1]
execute store result score players game if entity @a[gamemode=adventure]