execute if score input input matches 0..32 if score input input <= BonusAmountMax Settings run scoreboard players operation BonusAmountMin Settings = input input
execute unless score input input matches 0..32 if score input input <= BonusAmountMax Settings run tellraw @s {"text":"Must be 0-32!","color":"red"}
execute if score input input matches 0..32 if score input input > BonusAmountMax Settings run tellraw @s {"text":"Must be not higher than maximal bonuses amount!","color":"red"}
execute unless score input input matches 0..32 if score input input > BonusAmountMax Settings run tellraw @s {"text":"Must be 0-32 and not higher than maximal bonuses amount!","color":"red"}
execute if score reset Settings matches 1 run scoreboard players operation BonusAmountMin Settings = input input

execute at @e[tag=BonusAmountMin] run setblock ^ ^ ^-1 cyan_concrete_powder
data merge block -2 126 52 {Text1:'[{"text":"Minimal bonuses amount - "},{"score":{"name":"BonusAmountMin","objective":"Settings"}}]'}
data modify entity @e[tag=BonusAmountMin,limit=1] Item.tag.display.Name set from block -2 126 52 Text1
execute if entity @s[type=player] if score input input matches 0..32 run tellraw @a [{"text":"[","color":"gray","italic":true},{"selector":"@s"},": Minimal bonuses amount - ",{"score":{"name":"BonusAmountMin","objective":"Settings"}},"","]"]