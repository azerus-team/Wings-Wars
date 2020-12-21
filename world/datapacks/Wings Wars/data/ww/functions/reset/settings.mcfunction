scoreboard players set reset Settings 1
scoreboard players set input input 3
function ww:settings/set/lifes
scoreboard players set input input 4
function ww:settings/set/max_lifes
scoreboard players set input input 300
function ww:settings/set/bonus_time
scoreboard players set input input 600
function ww:settings/set/bonus_disappear_time
scoreboard players set input input 2
function ww:settings/set/bonus_amount_min
scoreboard players set input input 2
function ww:settings/set/bonus_amount_max
scoreboard players set input input 5
function ww:settings/set/max_arrows
scoreboard players set input input 100
function ww:settings/set/arrow_time
scoreboard players set input input 9000
function ww:settings/set/deathmatch_time
execute as @e[tag=Ballistics] at @s run function ww:settings/disable/ballistics
execute as @e[tag=HandCombat] at @s run function ww:settings/disable/hand_combat
execute as @e[tag=FriendlyFire] at @s run function ww:settings/disable/friendly_fire
execute as @e[tag=FFA] at @s run function ww:settings/enable/ffa
scoreboard players set reset Settings 0

data merge entity @s {ItemRotation:0}
scoreboard players reset @a input