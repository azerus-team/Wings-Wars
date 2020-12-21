execute if entity @s[team=!yellow] run tellraw @a [{"selector":"@s"},{"text":" has joined ","color":"aqua"},{"text":"yellow","color":"yellow"},{"text":" team","color":"aqua"}]
team join yellow @s
clear @s yellow_concrete{JoinTeam:"yellow"}
summon item -9 122.25 -2 {NoGravity:1,Item:{id:"yellow_concrete",Count:1,tag:{JoinTeam:"yellow"}},Tags:["JoinTeam"],Age:-32768}