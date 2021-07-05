execute if entity @s[team=!] run tellraw @a [{"selector":"@s"},{"text":" has left their team","color":"aqua"}]
team leave @s
clear @s white_concrete{JoinTeam:"white"}
summon item -12.0 118.75 -2 {NoGravity:1,Item:{id:"white_concrete",Count:1,tag:{JoinTeam:"white"}},Tags:["JoinTeam"],Age:-32768}