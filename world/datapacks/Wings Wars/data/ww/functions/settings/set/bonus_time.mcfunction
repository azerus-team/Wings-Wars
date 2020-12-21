execute if score input input matches 1..18000 run scoreboard players operation BonusTime Settings = input input
execute unless score input input matches 1..18000 run tellraw @s {"text":"Must be 1-18000!","color":"red"}
execute at @e[tag=BonusTime] run setblock ^ ^ ^-1 cyan_concrete_powder
data merge block -2 126 52 {Text1:'[{"text":"Bonuses appear in - "},{"score":{"name":"BonusTime","objective":"Settings"}},{"text":" - ticks"}]'}
data modify entity @e[tag=BonusTime,limit=1] Item.tag.display.Name set from block -2 126 52 Text1