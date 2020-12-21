scoreboard players operation bonusTimer game = BonusDisappearTime Settings

scoreboard players operation MaxRandom global = BonusAmount Settings
function ww:random
scoreboard players operation BonusAmount game = RandomResult global
scoreboard players operation BonusAmount game += BonusAmountMin Settings

scoreboard players set bonusTimer game 0

scoreboard players set BonusSpawned game 0
execute if score BonusSpawned game < BonusAmount game run function ww:game/spawn_bonus