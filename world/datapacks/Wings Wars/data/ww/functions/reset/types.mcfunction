execute as @e[tag=Nature] at @s run function ww:types/enable/nature
execute as @e[tag=AncientCivilization] at @s run function ww:types/disable/ancient_civilization

data merge entity @s {ItemRotation:0}