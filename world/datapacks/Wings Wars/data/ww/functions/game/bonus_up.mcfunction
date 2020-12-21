scoreboard players add bonusTimer game 1
scoreboard players set bonusLeftAmount game 0
scoreboard players operation bonusDisappearTimer game = BonusDisappearTime Settings
bossbar set bonus_timer color yellow

scoreboard players operation bonusTimerPercents game = bonusTimer game
scoreboard players operation bonusTimerPercents game *= Const100 global
scoreboard players operation bonusTimerPercents game /= BonusTime Settings
execute store result bossbar bonus_timer value run scoreboard players get bonusTimerPercents game

execute if score bonusTimer game >= BonusTime Settings run function ww:game/bonus