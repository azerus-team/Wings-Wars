execute store result score TypeAmount generate if data storage ww Types[]
scoreboard players operation MaxRandom global = TypeAmount generate
function ww:random
data modify storage ww Buffer set from storage ww Types
scoreboard players set current_element global 0
execute if score current_element global < RandomResult global run function ww:get_element
data modify storage ww Buffer set from storage ww Buffer[0]
execute store result score TypeAmount generate if data storage ww Buffer[]
scoreboard players operation MaxRandom global = TypeAmount generate
function ww:random
scoreboard players set current_element global 0
execute if score current_element global < RandomResult global run function ww:get_element
data modify storage ww Type set from storage ww Buffer[0]
execute store result score radius generate run data get storage ww Type.Radius
data remove storage ww Buffer