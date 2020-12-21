execute if score input input matches 1..100 run scoreboard players operation MaxLifes Settings = input input
execute unless score input input matches 1..100 run tellraw @s {"text":"Must be 1-100!","color":"red"}
execute at @e[tag=MaxLifes] run setblock ^ ^ ^-1 cyan_concrete_powder
data merge block -2 126 52 {Text1:'[{"text":"Maximum lifes - "},{"score":{"name":"MaxLifes","objective":"Settings"}}]'}
data modify entity @e[tag=MaxLifes,limit=1] Item.tag.display.Name set from block -2 126 52 Text1