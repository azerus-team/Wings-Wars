execute if score input input matches 0..32 if score input input >= BonusAmountMin Settings run scoreboard players operation BonusAmountMax Settings = input input
execute unless score input input matches 0..32 if score input input >= BonusAmountMin Settings run tellraw @s {"text":"Must be 0-32!","color":"red"}
execute if score input input matches 0..32 if score input input < BonusAmountMin Settings run tellraw @s {"text":"Must be not lower than minimal bonuses amount!","color":"red"}
execute unless score input input matches 0..32 if score input input < BonusAmountMin Settings run tellraw @s {"text":"Must be 0-32 and not lower than minimal bonuses amount!","color":"red"}
execute if score reset Settings matches 1 run scoreboard players operation BonusAmountMax Settings = input input

execute at @e[tag=BonusAmountMax] run setblock ^ ^ ^-1 cyan_concrete_powder
data merge block -2 126 52 {Text1:'[{"text":"Maximal bonuses amount - "},{"score":{"name":"BonusAmountMax","objective":"Settings"}}]'}
data modify entity @e[tag=BonusAmountMax,limit=1] Item.tag.display.Name set from block -2 126 52 Text1
execute if entity @s[type=player] if score input input matches 0..32 run tellraw @a [{"text":"[","color":"gray","italic":true},{"selector":"@s"},": Maximal bonuses amount  - ",{"score":{"name":"BonusAmountMax","objective":"Settings"}},"]"]