effect give @s regeneration 999999 255 true
effect give @s resistance 999999 255 true
effect give @s weakness 999999 255 true
effect give @s saturation 999999 255 true

clear @s firework_rocket
scoreboard players set @s fly 0

item replace entity @a[gamemode=adventure] armor.chest with air
tp @s -14 113 54 180 0
item replace entity @a[gamemode=adventure] armor.chest with elytra{HideFlags:5,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
give @s firework_rocket{Fireworks:{},display:{Name:'{"text":"Firework","color":"red","italic":"false"}'}}