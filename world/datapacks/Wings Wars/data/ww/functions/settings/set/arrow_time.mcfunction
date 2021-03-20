execute if score input input matches 1..18000 run scoreboard players operation ArrowTime Settings = input input
execute unless score input input matches 1..18000 run tellraw @s {"text":"Must be 1-18000!","color":"red"}
execute at @e[tag=ArrowTime] run setblock ^ ^ ^-1 cyan_concrete_powder
data merge block -2 126 52 {Text1:'[{"text":"Arrow in "},{"score":{"name":"ArrowTime","objective":"Settings"}},{"text":" ticks"}]'}
data modify entity @e[tag=ArrowTime,limit=1] Item.tag.display.Name set from block -2 126 52 Text1
execute if entity @s[type=player] if score input input matches 1..18000 run tellraw @a [{"text":"[","color":"gray","italic":true},{"selector":"@s"},": Arrow in ",{"score":{"name":"ArrowTime","objective":"Settings"}}," ticks","]"]