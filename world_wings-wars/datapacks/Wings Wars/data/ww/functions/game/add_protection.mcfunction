tag @s[tag=protection4] add protection5
tag @s[tag=protection3] add protection4
tag @s[tag=protection2] add protection3
tag @s[tag=protection1] add protection2
tag @s[tag=protection0] add protection1
tag @s[tag=protection0,tag=protection1] remove protection0
tag @s[tag=protection1,tag=protection2] remove protection1
tag @s[tag=protection2,tag=protection3] remove protection2
tag @s[tag=protection3,tag=protection4] remove protection3
tag @s[tag=protection4,tag=protection5] remove protection4

item replace entity @s[tag=protection1] armor.chest with elytra{HideFlags:5,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1},{id:"projectile_protection",lvl:2}],display:{Lore:['{"text":"Protection I","color":"gray","italic":"false"}']}} 1
execute if entity @s[tag=protection1] run tellraw @a [{"selector":"@s"},{"text":" has earned Protection I!","color":"aqua"}]
item replace entity @s[tag=protection2] armor.chest with elytra{HideFlags:5,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1},{id:"projectile_protection",lvl:4}],display:{Lore:['{"text":"Protection II","color":"gray","italic":"false"}']}}
execute if entity @s[tag=protection2] run tellraw @a [{"selector":"@s"},{"text":" has earned Protection II!","color":"aqua"}]
item replace entity @s[tag=protection3] armor.chest with elytra{HideFlags:5,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1},{id:"projectile_protection",lvl:5}],display:{Lore:['{"text":"Protection III","color":"gray","italic":"false"}']}}
execute if entity @s[tag=protection3] run tellraw @a [{"selector":"@s"},{"text":" has earned Protection III!","color":"aqua"}]
item replace entity @s[tag=protection4] armor.chest with elytra{HideFlags:5,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1},{id:"projectile_protection",lvl:5}],display:{Lore:['{"text":"Protection IV","color":"gray","italic":"false"}']}}
effect give @s[tag=protection4] resistance 999999 0 true
execute if entity @s[tag=protection4] run tellraw @a [{"selector":"@s"},{"text":" has earned Protection IV!","color":"aqua"}]

clear @s diamond_chestplate 1
scoreboard players remove @s protection 1