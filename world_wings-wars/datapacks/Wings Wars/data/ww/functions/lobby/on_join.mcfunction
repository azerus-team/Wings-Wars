bossbar set bonus_timer players
gamemode adventure @s
team leave @s
clear @s
effect clear @s
effect give @s regeneration 999999 255 true
effect give @s resistance 999999 255 true
effect give @s weakness 999999 255 true
effect give @s saturation 999999 255 true
scoreboard players set @s fly 0
tp @s -14 113 54 180 0
spawnpoint @s -14 113 54 180
item replace entity @s armor.chest with elytra{HideFlags:5,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
give @s firework_rocket{Fireworks:{},display:{Name:'{"text":"Firework","color":"red","italic":"false"}'}}
tag @s[tag=red] remove red
tag @s[tag=yellow] remove yellow
tag @s[tag=green] remove green
tag @s[tag=blue] remove blue
scoreboard players set @s dead 2