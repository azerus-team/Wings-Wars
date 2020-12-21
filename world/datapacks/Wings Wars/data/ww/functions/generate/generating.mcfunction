scoreboard players add timer generate 1
execute if score timer generate matches 1 run function ww:generate/map
execute if score timer generate matches 4 run function ww:generate/island
execute if score timer generate matches 7 run function ww:generate/island
execute if score timer generate matches 10 run function ww:generate/island
execute if score timer generate matches 13 run function ww:generate/island
execute if score timer generate matches 16 run function ww:generate/island
execute if score timer generate matches 19 run function ww:generate/island
execute if score timer generate matches 22 run function ww:generate/island
execute if score timer generate matches 25 run function ww:generate/island
execute if score timer generate matches 28 run function ww:generate/island
execute if score timer generate matches 31 run function ww:generate/island
execute if score timer generate matches 34 run function ww:generate/island
execute if score timer generate matches 37 run function ww:generate/island
execute if score timer generate matches 40 run function ww:generate/island
execute if score timer generate matches 43 run function ww:generate/island
execute if score timer generate matches 46 run function ww:generate/island
execute if score timer generate matches 49 run function ww:generate/island
execute if score timer generate matches 52 run function ww:generate/island
execute if score timer generate matches 55 run function ww:generate/island
execute if score timer generate matches 58 run function ww:generate/island
execute if score timer generate matches 61 run function ww:generate/island
execute if score timer generate matches 64 run function ww:generate/island
execute if score timer generate matches 67 run function ww:generate/island
execute if score timer generate matches 70 run function ww:generate/island
execute if score timer generate matches 73 run function ww:generate/island
execute if score timer generate matches 76 run function ww:generate/island
execute if score timer generate matches 79 run function ww:generate/island
execute if score timer generate matches 82 run function ww:generate/island
execute if score timer generate matches 85 run function ww:generate/island
execute if score timer generate matches 88 run function ww:generate/island
execute if score timer generate matches 91 run function ww:generate/island
execute if score timer generate matches 94 run function ww:generate/island
execute if score timer generate matches 97 run function ww:generate/island
execute if score timer generate matches 100 run tellraw @a [{"text":"100","color":"dark_blue"},{"text":"% are generated. All lobby mechanics are available again.","color":"aqua"}]
execute if score timer generate matches 100 run kill @e[tag=block]
execute if score timer generate matches 100 run scoreboard players set IsMapGenerated global 1
execute if score timer generate matches 100 run scoreboard players set GameState global 0
execute if score timer generate matches 100 run data merge block -17 114 88 {Text2:'{"text":"Generate Map","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"function ww:generate/generate"}}'}
