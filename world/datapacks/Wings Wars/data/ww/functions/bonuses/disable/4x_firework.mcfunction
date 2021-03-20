scoreboard players set 4xFirework bonus 0
setblock ^ ^ ^-1 red_concrete_powder
data merge entity @s {ItemRotation:0}
data modify storage ww BonusesDisplay[6] set value "✘"
function ww:presets/check_presets