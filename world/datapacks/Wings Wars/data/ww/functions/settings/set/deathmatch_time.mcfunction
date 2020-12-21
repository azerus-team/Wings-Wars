execute if score input input matches 300..18000 run scoreboard players operation DeathmatchTime Settings = input input
execute unless score input input matches 300..18000 run tellraw @s {"text":"Must be 300-18000!","color":"red"}
execute at @e[tag=DeathmatchTime] run setblock ^ ^ ^-1 cyan_concrete_powder
data merge block -2 126 52 {Text1:'[{"text":"Deathmatch in - "},{"score":{"name":"DeathmatchTime","objective":"Settings"}},{"text":" - ticks"}]'}
data modify entity @e[tag=DeathmatchTime,limit=1] Item.tag.display.Name set from block -2 126 52 Text1