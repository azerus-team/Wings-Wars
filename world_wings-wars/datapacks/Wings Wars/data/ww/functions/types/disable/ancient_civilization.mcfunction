scoreboard players set AncientCivilization type 0
setblock ^ ^ ^-1 red_concrete_powder
data merge entity @s {ItemRotation:0}
execute if score Nature type matches 0 if score Spaceships type matches 0 as @e[tag=AncientCivilization] at @s run function ww:types/enable/ancient_civilization