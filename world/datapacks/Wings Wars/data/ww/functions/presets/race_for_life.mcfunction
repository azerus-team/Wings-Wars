execute as @e[tag=AdditionalLife] at @s run function ww:bonuses/enable/additional_life
execute as @e[tag=4xArrow] at @s run function ww:bonuses/disable/4x_arrow
execute as @e[tag=8xArrow] at @s run function ww:bonuses/disable/8x_arrow
execute as @e[tag=12xArrow] at @s run function ww:bonuses/disable/12x_arrow
execute as @e[tag=16xArrow] at @s run function ww:bonuses/disable/16x_arrow
execute as @e[tag=3xFirework] at @s run function ww:bonuses/disable/3x_firework
execute as @e[tag=4xFirework] at @s run function ww:bonuses/disable/4x_firework
execute as @e[tag=5xFirework] at @s run function ww:bonuses/disable/5x_firework
execute as @e[tag=Protection] at @s run function ww:bonuses/disable/protection
execute as @e[tag=PowerI] at @s run function ww:bonuses/disable/power_1
execute as @e[tag=PowerII] at @s run function ww:bonuses/disable/power_2
execute as @e[tag=Flame] at @s run function ww:bonuses/disable/flame

scoreboard players set reset Settings 1
scoreboard players set input input 3
function ww:settings/set/lifes
scoreboard players set input input 1
function ww:settings/set/max_lifes
scoreboard players set input input 300
function ww:settings/set/bonus_time
scoreboard players set input input 600
function ww:settings/set/bonus_disappear_time
scoreboard players set input input 1
function ww:settings/set/bonus_amount_min
scoreboard players set input input 2
function ww:settings/set/bonus_amount_max
scoreboard players set input input 5
function ww:settings/set/max_arrows
scoreboard players set input input 100
function ww:settings/set/arrow_time
scoreboard players set input input 300
function ww:settings/set/deathmatch_time
execute as @e[tag=Ballistics] at @s run function ww:settings/disable/ballistics
execute as @e[tag=HandCombat] at @s run function ww:settings/disable/hand_combat
execute as @e[tag=FriendlyFire] at @s run function ww:settings/disable/friendly_fire
scoreboard players set reset Settings 0
scoreboard players reset @a input

function ww:presets/check_presets
data merge entity @s {ItemRotation:0}