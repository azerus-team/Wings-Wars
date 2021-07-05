execute at @e[tag=Input] run setblock ^ ^ ^-1 cyan_concrete_powder
setblock ^ ^ ^-1 yellow_concrete_powder
data merge entity @s {ItemRotation:0}
scoreboard players set @a input -1
scoreboard players enable @a input
scoreboard players set input global 8