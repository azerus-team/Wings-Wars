tellraw @s {"text":"Must be zero or higher!","color":"red"}
scoreboard players set @s input -1
execute as @e[tag=Input] at @s run setblock ^ ^ ^-1 cyan_concrete_powder