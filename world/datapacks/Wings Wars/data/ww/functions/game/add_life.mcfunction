execute if score @s lifes >= MaxLifes Settings run tellraw @a [{"selector":"@s"},{"text":" has regenerated their HP!","color":"gold"}]
execute if score @s lifes >= MaxLifes Settings run effect give @s regeneration 1 255 true
execute if score @s lifes < MaxLifes Settings run tellraw @a [{"selector":"@s"},{"text":" has earned 1 Life!","color":"gold"}]
execute if score @s lifes < MaxLifes Settings run scoreboard players add @s lifes 1
clear @s totem_of_undying 1
scoreboard players remove @s additionalLife 1