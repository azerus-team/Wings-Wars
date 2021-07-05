scoreboard players set Nature type 0
setblock ^ ^ ^-1 red_concrete_powder
data merge entity @s {ItemRotation:0}
execute if score AncientCivilization type matches 0 if score Spaceships type matches 0 as @e[tag=Nature] at @s run function ww:types/enable/nature