tag @a[scores={left=1..}] remove joined
execute as @a[tag=!joined] run function ww:on_join

execute if score GameState global matches 0 run function ww:lobby/lobby
execute if score GameState global matches 1 run function ww:generate/generating
execute if score GameState global matches 2 run function ww:game/game



