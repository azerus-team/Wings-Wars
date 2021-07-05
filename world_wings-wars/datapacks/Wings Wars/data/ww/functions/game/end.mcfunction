schedule clear ww:game/start

scoreboard objectives setdisplay list

bossbar set bonus_timer players

team modify red friendlyFire false
team modify yellow friendlyFire false
team modify green friendlyFire false
team modify blue friendlyFire false

kill @e[type=item]
summon item -16 122.25 -2 {NoGravity:1,Item:{id:"red_concrete",Count:1,tag:{JoinTeam:"red"}},Tags:["JoinTeam"],Age:-32768}
summon item -9 122.25 -2 {NoGravity:1,Item:{id:"yellow_concrete",Count:1,tag:{JoinTeam:"yellow"}},Tags:["JoinTeam"],Age:-32768}
summon item -9 115.25 -2 {NoGravity:1,Item:{id:"lime_concrete",Count:1,tag:{JoinTeam:"green"}},Tags:["JoinTeam"],Age:-32768}
summon item -16 115.25 -2 {NoGravity:1,Item:{id:"light_blue_concrete",Count:1,tag:{JoinTeam:"blue"}},Tags:["JoinTeam"],Age:-32768}
summon item -12.0 118.75 -2 {NoGravity:1,Item:{id:"white_concrete",Count:1,tag:{JoinTeam:"white"}},Tags:["JoinTeam"],Age:-32768}
kill @e[type=arrow]

clear @a
effect clear @a
effect give @a regeneration 999999 255 true
effect give @a resistance 999999 255 true
effect give @a weakness 999999 255 true
effect give @a saturation 999999 255 true

gamemode adventure @a
tp @a -14 113 54 180 0

scoreboard players set timer game 0
scoreboard players set @a fly 0

scoreboard players set Deathmatch game 0
scoreboard players set GameState global 0

item replace entity @a armor.chest with elytra{HideFlags:5,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
give @a firework_rocket{Fireworks:{},display:{Name:'{"text":"Firework","color":"red","italic":"false"}'}}

data merge block -11 113 28 {Text2:'{"text":"Start a Game","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"execute if score GameState global matches 0 run function ww:game/try_start"}}',Text3:'{"text":"","underlined":true,"clickEvent":{"action":"run_command","value":"execute if score GameState global matches 1 run tellraw @s {\\"text\\":\\"A map is being generated!\\",\\"color\\":\\"red\\"}"}}'}