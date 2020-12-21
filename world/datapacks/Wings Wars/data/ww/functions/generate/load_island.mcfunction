scoreboard players set MaxRandom global 8
function ww:random


execute store result score posX generate run data get storage ww Type.StructureBlock.posX
execute store result score posZ generate run data get storage ww Type.StructureBlock.posZ
execute unless score RandomResult global matches 0 unless score RandomResult global matches 2 unless score RandomResult global matches 4 unless score RandomResult global matches 6 store result score posX generate run data get storage ww Type.StructureBlock.posZ
execute unless score RandomResult global matches 0 unless score RandomResult global matches 2 unless score RandomResult global matches 4 unless score RandomResult global matches 6 store result score posZ generate run data get storage ww Type.StructureBlock.posX

execute unless score RandomResult global matches 0 unless score RandomResult global matches 3..5 run scoreboard players operation posX generate *= Const-1 global
execute unless score RandomResult global matches 0..1 unless score RandomResult global matches 5..6 run scoreboard players operation posZ generate *= Const-1 global

execute unless score RandomResult global matches 0 unless score RandomResult global matches 2..4 unless score RandomResult global matches 6..7 at @s run data modify storage ww Type.StructureBlock merge value {rotation:"CLOCKWISE_90"}
execute unless score RandomResult global matches 0..1 unless score RandomResult global matches 3..5 unless score RandomResult global matches 7 at @s run data modify storage ww Type.StructureBlock merge value {rotation:"CLOCKWISE_180"}
execute unless score RandomResult global matches 0..2 unless score RandomResult global matches 4..6 at @s run data modify storage ww Type.StructureBlock merge value {rotation:"COUNTERCLOCKWISE_90"}
execute if score RandomResult global matches 4..7 at @s run data modify storage ww Type.StructureBlock merge value {mirror:"LEFT_RIGHT"}

execute store result storage ww Type.StructureBlock.posX int 1 run scoreboard players get posX generate
execute store result storage ww Type.StructureBlock.posZ int 1 run scoreboard players get posZ generate

execute store result entity @s Pos[1] double 1 run scoreboard players get height generate
execute at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD"}
execute at @s run data modify block ~ ~ ~ {} merge from storage ww Type.StructureBlock

execute at @s run setblock ~ ~1 ~ redstone_block