scoreboard players set Spaceships type 0
setblock ^ ^ ^-1 red_concrete_powder
data merge entity @s {ItemRotation:0}
execute if score Nature type matches 0 if score AncientCivilization type matches 0 as @e[tag=Spaceships] at @s run function ww:types/enable/spaceships