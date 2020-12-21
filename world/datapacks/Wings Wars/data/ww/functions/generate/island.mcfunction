execute as @e[tag=block,tag=!border] at @s positioned ~-1.5 ~ ~-1.5 store result score @s neighbors if entity @e[tag=block,dx=2,dy=0,dz=2]
scoreboard players set @e[tag=block] layer 14
scoreboard players set @e[tag=block,tag=!border,scores={neighbors=..8}] layer 1

execute as @e[tag=block,scores={layer=14}] at @s positioned ~-1.5 ~ ~-1.5 if entity @e[dx=2,dy=0,dz=2,tag=block,scores={layer=1}] run scoreboard players set @s layer 2
execute as @e[tag=block,scores={layer=14}] at @s positioned ~-1.5 ~ ~-1.5 if entity @e[dx=2,dy=0,dz=2,tag=block,scores={layer=2}] run scoreboard players set @s layer 3
execute as @e[tag=block,scores={layer=14}] at @s positioned ~-1.5 ~ ~-1.5 if entity @e[dx=2,dy=0,dz=2,tag=block,scores={layer=3}] run scoreboard players set @s layer 4
execute as @e[tag=block,scores={layer=14}] at @s positioned ~-1.5 ~ ~-1.5 if entity @e[dx=2,dy=0,dz=2,tag=block,scores={layer=4}] run scoreboard players set @s layer 5
execute as @e[tag=block,scores={layer=14}] at @s positioned ~-1.5 ~ ~-1.5 if entity @e[dx=2,dy=0,dz=2,tag=block,scores={layer=5}] run scoreboard players set @s layer 6
execute as @e[tag=block,scores={layer=14}] at @s positioned ~-1.5 ~ ~-1.5 if entity @e[dx=2,dy=0,dz=2,tag=block,scores={layer=6}] run scoreboard players set @s layer 7
execute as @e[tag=block,scores={layer=14}] at @s positioned ~-1.5 ~ ~-1.5 if entity @e[dx=2,dy=0,dz=2,tag=block,scores={layer=7}] run scoreboard players set @s layer 8
execute as @e[tag=block,scores={layer=14}] at @s positioned ~-1.5 ~ ~-1.5 if entity @e[dx=2,dy=0,dz=2,tag=block,scores={layer=8}] run scoreboard players set @s layer 9
execute as @e[tag=block,scores={layer=14}] at @s positioned ~-1.5 ~ ~-1.5 if entity @e[dx=2,dy=0,dz=2,tag=block,scores={layer=9}] run scoreboard players set @s layer 10
execute as @e[tag=block,scores={layer=14}] at @s positioned ~-1.5 ~ ~-1.5 if entity @e[dx=2,dy=0,dz=2,tag=block,scores={layer=10}] run scoreboard players set @s layer 11
execute as @e[tag=block,scores={layer=14}] at @s positioned ~-1.5 ~ ~-1.5 if entity @e[dx=2,dy=0,dz=2,tag=block,scores={layer=11}] run scoreboard players set @s layer 12
execute as @e[tag=block,scores={layer=14}] at @s positioned ~-1.5 ~ ~-1.5 if entity @e[dx=2,dy=0,dz=2,tag=block,scores={layer=12}] run scoreboard players set @s layer 13

function ww:generate/type
execute store result score sizeY generate run data get storage ww Type.StructureBlock.sizeY
function ww:generate/height
execute as @e[tag=block] if score @s layer > radius generate run tag @s add CanBeSelected
execute as @e[tag=CanBeSelected,sort=random,limit=1] run function ww:generate/load_island
tag @e[tag=CanBeSelected] remove CanBeSelected

execute at @e[tag=radius2] positioned ~-3.5 0 ~-3.5 run kill @e[tag=block,dx=6,dy=255,dz=6]
execute at @e[tag=radius3] positioned ~-4.5 0 ~-4.5 run kill @e[tag=block,dx=8,dy=255,dz=8]
execute at @e[tag=radius4] positioned ~-5.5 0 ~-5.5 run kill @e[tag=block,dx=10,dy=255,dz=10]
execute at @e[tag=radius5] positioned ~-6.5 0 ~-6.5 run kill @e[tag=block,dx=12,dy=255,dz=12]
execute at @e[tag=radius6] positioned ~-7.5 0 ~-7.5 run kill @e[tag=block,dx=14,dy=255,dz=14]
execute at @e[tag=radius9] positioned ~-10.5 0 ~-10.5 run kill @e[tag=block,dx=20,dy=255,dz=20]
kill @e[tag=radius]

tellraw @a [{"score":{"name":"timer","objective":"generate"},"color":"dark_blue"},{"text":"% are generated","color":"aqua"}]