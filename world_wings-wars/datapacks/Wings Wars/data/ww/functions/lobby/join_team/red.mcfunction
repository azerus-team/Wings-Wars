execute if entity @s[team=!red] run tellraw @a [{"selector":"@s"},{"text":" has joined ","color":"aqua"},{"text":"red","color":"red"},{"text":" team","color":"aqua"}]
team join red @s
clear @s red_concrete{JoinTeam:"red"}
summon item -16 122.25 -2 {NoGravity:1,Item:{id:"red_concrete",Count:1,tag:{JoinTeam:"red"}},Tags:["JoinTeam"],Age:-32768}