execute if entity @s[team=!blue] run tellraw @a [{"selector":"@s"},{"text":" has joined ","color":"aqua"},{"text":"blue","color":"blue"},{"text":" team","color":"aqua"}]
team join blue @s
clear @s light_blue_concrete{JoinTeam:"blue"}
summon item -16 115.25 -2 {NoGravity:1,Item:{id:"light_blue_concrete",Count:1,tag:{JoinTeam:"blue"}},Tags:["JoinTeam"],Age:-32768}