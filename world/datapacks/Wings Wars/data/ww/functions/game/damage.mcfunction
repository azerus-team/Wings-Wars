scoreboard players operation @s damageTaken /= Const10 global
scoreboard players operation @s damageTakenTenth %= Const10 global
execute unless score @s witherTimer matches 1 run tellraw @a [{"selector":"@s"},{"text":" has got ","color":"aqua"},{"score":{"name":"@s","objective":"damageTaken"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"damageTakenTenth"},"color":"yellow"},{"text":"❤","color":"dark_red"},{"text":" damage","color":"aqua"}]
execute if score @s damageTaken matches 1 if score @s damageTakenTenth matches 0 run tag @s add damage1.0HP
execute if score @s damageTaken matches 0 if score @s damageTakenTenth matches 8 run tag @s add damage0.8HP
execute if score @s[tag=!protection4,tag=!protection5] witherTimer matches 1 unless entity @s[tag=damage1.0HP] run tellraw @a [{"selector":"@s"},{"text":" has got ","color":"aqua"},{"score":{"name":"@s","objective":"damageTaken"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"damageTakenTenth"},"color":"yellow"},{"text":"❤","color":"dark_red"},{"text":" damage","color":"aqua"}]
execute if score @s[tag=protection4] witherTimer matches 1 unless entity @s[tag=damage0.8HP] run tellraw @a [{"selector":"@s"},{"text":" has got ","color":"aqua"},{"score":{"name":"@s","objective":"damageTaken"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"damageTakenTenth"},"color":"yellow"},{"text":"❤","color":"dark_red"},{"text":" damage","color":"aqua"}]
execute if score @s[tag=protection5] witherTimer matches 1 unless entity @s[tag=damage0.8HP] run tellraw @a [{"selector":"@s"},{"text":" has got ","color":"aqua"},{"score":{"name":"@s","objective":"damageTaken"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"damageTakenTenth"},"color":"yellow"},{"text":"❤","color":"dark_red"},{"text":" damage","color":"aqua"}]
tag @s remove damage0.8HP
tag @s remove damage1.0HP
scoreboard players reset @s damageTaken
scoreboard players reset @s damageTakenTenth