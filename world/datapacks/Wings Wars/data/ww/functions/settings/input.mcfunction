scoreboard players operation input input = @s input
execute if score input global matches 1 run function ww:settings/set/lifes
execute if score input global matches 2 run function ww:settings/set/max_lifes
execute if score input global matches 3 run function ww:settings/set/bonus_time
execute if score input global matches 4 run function ww:settings/set/bonus_disappear_time
execute if score input global matches 5 run function ww:settings/set/bonus_amount_min
execute if score input global matches 6 run function ww:settings/set/bonus_amount_max
execute if score input global matches 7 run function ww:settings/set/max_arrows
execute if score input global matches 8 run function ww:settings/set/arrow_time
execute if score input global matches 9 run function ww:settings/set/deathmatch_time
scoreboard players reset @a input
function ww:presets/check_presets