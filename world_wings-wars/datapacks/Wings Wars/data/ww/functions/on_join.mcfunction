execute if score GameState global matches 2 run function ww:game/on_join
execute if score GameState global matches 0..1 run function ww:lobby/on_join
title @a times 5 15 0
scoreboard players reset @s left
tag @s add joined
scoreboard players reset @s input