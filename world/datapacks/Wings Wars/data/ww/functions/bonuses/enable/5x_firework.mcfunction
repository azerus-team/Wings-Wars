scoreboard players set 5xFirework bonus 1
setblock ^ ^ ^-1 lime_concrete_powder
data merge entity @s {ItemRotation:0}
data modify storage ww BonusesDisplay[7] set value "✔"
function ww:presets/check_presets