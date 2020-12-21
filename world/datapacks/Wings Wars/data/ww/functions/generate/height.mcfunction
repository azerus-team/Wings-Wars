scoreboard players set MaxRandom global 30
function ww:random
scoreboard players operation height generate = RandomResult global
scoreboard players operation height generate -= sizeY generate
scoreboard players add height generate 132