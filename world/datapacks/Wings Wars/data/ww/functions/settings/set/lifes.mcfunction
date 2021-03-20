execute if score input input matches 1..100 run scoreboard players operation Lifes Settings = input input
execute unless score input input matches 1..100 run tellraw @s {"text":"Must be 1-100!","color":"red"}
execute at @e[tag=Lifes] run setblock ^ ^ ^-1 cyan_concrete_powder
data merge block -2 126 52 {Text1:'[{"text":"Lives - "},{"score":{"name":"Lifes","objective":"Settings"}}]'}
data modify entity @e[tag=Lifes,limit=1] Item.tag.display.Name set from block -2 126 52 Text1
execute if entity @s[type=player] if score input input matches 1..100 run tellraw @a [{"text":"[","color":"gray","italic":true},{"selector":"@s"},": Lives - ",{"score":{"name":"Lifes","objective":"Settings"}},"]"]