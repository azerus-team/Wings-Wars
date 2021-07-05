execute if score input input matches 0..64 run scoreboard players operation MaxArrows Settings = input input
execute unless score input input matches 0..64 run tellraw @s {"text":"Must be 0-64!","color":"red"}
execute at @e[tag=MaxArrows] run setblock ^ ^ ^-1 cyan_concrete_powder
data merge block -2 126 52 {Text1:'[{"text":"Maximum arrows - "},{"score":{"name":"MaxArrows","objective":"Settings"}}]'}
data modify entity @e[tag=MaxArrows,limit=1] Item.tag.display.Name set from block -2 126 52 Text1
execute if entity @s[type=player] if score input input matches 0..64 run tellraw @a [{"text":"[","color":"gray","italic":true},{"selector":"@s"},": Maximum arrows - ",{"score":{"name":"MaxArrows","objective":"Settings"}},"]"]