scoreboard players set AdditionalLife bonus 0
setblock ^ ^ ^-1 red_concrete_powder
data merge entity @s {ItemRotation:0}
data modify storage ww BonusesDisplay[0] set value "✘"
function ww:presets/check_presets