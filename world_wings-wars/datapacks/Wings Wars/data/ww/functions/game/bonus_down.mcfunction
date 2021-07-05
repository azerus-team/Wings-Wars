scoreboard players remove bonusDisappearTimer game 1
execute store result score bonusLeftAmount game if entity @e[tag=BonusItem]
scoreboard players set bonusTimer game 0
bossbar set bonus_timer color green

scoreboard players operation bonusTimerPercents game = bonusDisappearTimer game
scoreboard players operation bonusTimerPercents game *= Const100 global
scoreboard players operation bonusTimerPercents game /= BonusDisappearTime Settings
execute store result bossbar bonus_timer value run scoreboard players get bonusTimerPercents game

execute if score bonusDisappearTimer game matches ..0 run kill @e[type=item,tag=BonusItem]