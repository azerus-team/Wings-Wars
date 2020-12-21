execute as @e[tag=AdditionalLife] at @s run function ww:bonuses/enable/additional_life
execute as @e[tag=4xArrow] at @s run function ww:bonuses/enable/4x_arrow
execute as @e[tag=8xArrow] at @s run function ww:bonuses/enable/8x_arrow
execute as @e[tag=12xArrow] at @s run function ww:bonuses/enable/12x_arrow
execute as @e[tag=16xArrow] at @s run function ww:bonuses/enable/16x_arrow
execute as @e[tag=3xFirework] at @s run function ww:bonuses/enable/3x_firework
execute as @e[tag=4xFirework] at @s run function ww:bonuses/enable/4x_firework
execute as @e[tag=5xFirework] at @s run function ww:bonuses/enable/5x_firework
execute as @e[tag=Protection] at @s run function ww:bonuses/enable/protection
execute as @e[tag=PowerI] at @s run function ww:bonuses/enable/power_1
execute as @e[tag=PowerII] at @s run function ww:bonuses/enable/power_2
execute as @e[tag=Flame] at @s run function ww:bonuses/enable/flame

data merge entity @s {ItemRotation:0}