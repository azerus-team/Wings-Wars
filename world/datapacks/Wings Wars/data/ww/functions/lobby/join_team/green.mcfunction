execute if entity @s[team=!green] run tellraw @a [{"selector":"@s"},{"text":" has joined ","color":"aqua"},{"text":"green","color":"green"},{"text":" team","color":"aqua"}]
team join green @s
clear @s lime_concrete{JoinTeam:"green"}
summon item -9 115.25 -2 {NoGravity:1,Item:{id:"lime_concrete",Count:1,tag:{JoinTeam:"green"}},Tags:["JoinTeam"],Age:-32768}