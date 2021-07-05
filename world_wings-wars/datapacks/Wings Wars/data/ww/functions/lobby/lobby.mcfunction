scoreboard players add @a fly 100
execute as @a if score @s fly matches 50000.. run function ww:game/firework
execute as @a run scoreboard players operation @s flyPercents = @s fly
execute as @a run scoreboard players operation @s flyPercents /= Const500 global
title @a actionbar [{"text":"Your firework charge: ","color":"gold"},{"score":{"name":"*","objective":"flyPercents"},"color":"dark_red"},{"text":"%","color":"gold"}]


execute as @e[type=item,tag=!JoinTeam] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,tag=!JoinTeam] at @s run tp @s @p


execute as @a if score @s dead matches 1 run function ww:lobby/dead

scoreboard players remove @a zone 1
execute positioned -95.0 0 -22.0 run scoreboard players set @a[dx=158,dy=255,dz=142] zone 140
execute as @a[scores={zone=..139,dead=1..}] run function ww:lobby/zone


execute as @e[type=item_frame,tag=Lifes] unless data entity @s {ItemRotation:0b} at @s run function ww:settings/select/lifes
execute as @e[type=item_frame,tag=MaxLifes] unless data entity @s {ItemRotation:0b} at @s run function ww:settings/select/max_lifes
execute as @e[type=item_frame,tag=BonusTime] unless data entity @s {ItemRotation:0b} at @s run function ww:settings/select/bonus_time
execute as @e[type=item_frame,tag=BonusDisappearTime] unless data entity @s {ItemRotation:0b} at @s run function ww:settings/select/bonus_disappear_time
execute as @e[type=item_frame,tag=BonusAmountMin] unless data entity @s {ItemRotation:0b} at @s run function ww:settings/select/bonus_amount_min
execute as @e[type=item_frame,tag=BonusAmountMax] unless data entity @s {ItemRotation:0b} at @s run function ww:settings/select/bonus_amount_max
execute as @e[type=item_frame,tag=MaxArrows] unless data entity @s {ItemRotation:0b} at @s run function ww:settings/select/max_arrows
execute as @e[type=item_frame,tag=ArrowTime] unless data entity @s {ItemRotation:0b} at @s run function ww:settings/select/arrow_time
execute as @e[type=item_frame,tag=DeathmatchTime] unless data entity @s {ItemRotation:0b} at @s run function ww:settings/select/deathmatch_time
execute as @e[type=item_frame,tag=Ballistics] unless data entity @s {ItemRotation:0b} if score Ballistics Settings matches 0 at @s run function ww:settings/enable/ballistics
execute as @e[type=item_frame,tag=Ballistics] unless data entity @s {ItemRotation:0b} if score Ballistics Settings matches 1 at @s run function ww:settings/disable/ballistics
execute as @e[type=item_frame,tag=HandCombat] unless data entity @s {ItemRotation:0b} if score HandCombat Settings matches 0 at @s run function ww:settings/enable/hand_combat
execute as @e[type=item_frame,tag=HandCombat] unless data entity @s {ItemRotation:0b} if score HandCombat Settings matches 1 at @s run function ww:settings/disable/hand_combat
execute as @e[type=item_frame,tag=FriendlyFire] unless data entity @s {ItemRotation:0b} if score FriendlyFire Settings matches 0 at @s run function ww:settings/enable/friendly_fire
execute as @e[type=item_frame,tag=FriendlyFire] unless data entity @s {ItemRotation:0b} if score FriendlyFire Settings matches 1 at @s run function ww:settings/disable/friendly_fire
execute as @e[type=item_frame,tag=FFA] unless data entity @s {ItemRotation:0b} if score FFA Settings matches 0 at @s run function ww:settings/enable/ffa
execute as @e[type=item_frame,tag=FFA] unless data entity @s {ItemRotation:0b} if score FFA Settings matches 1 at @s run function ww:settings/disable/ffa

execute as @e[type=item_frame,tag=Nature] unless data entity @s {ItemRotation:0b} if score Nature type matches 0 at @s run function ww:types/enable/nature
execute as @e[type=item_frame,tag=Nature] unless data entity @s {ItemRotation:0b} if score Nature type matches 1 at @s run function ww:types/disable/nature
execute as @e[type=item_frame,tag=AncientCivilization] unless data entity @s {ItemRotation:0b} if score AncientCivilization type matches 0 at @s run function ww:types/enable/ancient_civilization
execute as @e[type=item_frame,tag=AncientCivilization] unless data entity @s {ItemRotation:0b} if score AncientCivilization type matches 1 at @s run function ww:types/disable/ancient_civilization
execute as @e[type=item_frame,tag=Spaceships] unless data entity @s {ItemRotation:0b} if score Spaceships type matches 0 at @s run function ww:types/enable/spaceships
execute as @e[type=item_frame,tag=Spaceships] unless data entity @s {ItemRotation:0b} if score Spaceships type matches 1 at @s run function ww:types/disable/spaceships

execute as @e[type=item_frame,tag=AdditionalLife] unless data entity @s {ItemRotation:0b} if score AdditionalLife bonus matches 0 at @s run function ww:bonuses/enable/additional_life
execute as @e[type=item_frame,tag=AdditionalLife] unless data entity @s {ItemRotation:0b} if score AdditionalLife bonus matches 1 at @s run function ww:bonuses/disable/additional_life
execute as @e[type=item_frame,tag=4xArrow] unless data entity @s {ItemRotation:0b} if score 4xArrow bonus matches 0 at @s run function ww:bonuses/enable/4x_arrow
execute as @e[type=item_frame,tag=4xArrow] unless data entity @s {ItemRotation:0b} if score 4xArrow bonus matches 1 at @s run function ww:bonuses/disable/4x_arrow
execute as @e[type=item_frame,tag=8xArrow] unless data entity @s {ItemRotation:0b} if score 8xArrow bonus matches 0 at @s run function ww:bonuses/enable/8x_arrow
execute as @e[type=item_frame,tag=8xArrow] unless data entity @s {ItemRotation:0b} if score 8xArrow bonus matches 1 at @s run function ww:bonuses/disable/8x_arrow
execute as @e[type=item_frame,tag=12xArrow] unless data entity @s {ItemRotation:0b} if score 12xArrow bonus matches 0 at @s run function ww:bonuses/enable/12x_arrow
execute as @e[type=item_frame,tag=12xArrow] unless data entity @s {ItemRotation:0b} if score 12xArrow bonus matches 1 at @s run function ww:bonuses/disable/12x_arrow
execute as @e[type=item_frame,tag=16xArrow] unless data entity @s {ItemRotation:0b} if score 16xArrow bonus matches 0 at @s run function ww:bonuses/enable/16x_arrow
execute as @e[type=item_frame,tag=16xArrow] unless data entity @s {ItemRotation:0b} if score 16xArrow bonus matches 1 at @s run function ww:bonuses/disable/16x_arrow
execute as @e[type=item_frame,tag=3xFirework] unless data entity @s {ItemRotation:0b} if score 3xFirework bonus matches 0 at @s run function ww:bonuses/enable/3x_firework
execute as @e[type=item_frame,tag=3xFirework] unless data entity @s {ItemRotation:0b} if score 3xFirework bonus matches 1 at @s run function ww:bonuses/disable/3x_firework
execute as @e[type=item_frame,tag=4xFirework] unless data entity @s {ItemRotation:0b} if score 4xFirework bonus matches 0 at @s run function ww:bonuses/enable/4x_firework
execute as @e[type=item_frame,tag=4xFirework] unless data entity @s {ItemRotation:0b} if score 4xFirework bonus matches 1 at @s run function ww:bonuses/disable/4x_firework
execute as @e[type=item_frame,tag=5xFirework] unless data entity @s {ItemRotation:0b} if score 5xFirework bonus matches 0 at @s run function ww:bonuses/enable/5x_firework
execute as @e[type=item_frame,tag=5xFirework] unless data entity @s {ItemRotation:0b} if score 5xFirework bonus matches 1 at @s run function ww:bonuses/disable/5x_firework
execute as @e[type=item_frame,tag=Protection] unless data entity @s {ItemRotation:0b} if score Protection bonus matches 0 at @s run function ww:bonuses/enable/protection
execute as @e[type=item_frame,tag=Protection] unless data entity @s {ItemRotation:0b} if score Protection bonus matches 1 at @s run function ww:bonuses/disable/protection
execute as @e[type=item_frame,tag=PowerI] unless data entity @s {ItemRotation:0b} if score PowerI bonus matches 0 at @s run function ww:bonuses/enable/power_1
execute as @e[type=item_frame,tag=PowerI] unless data entity @s {ItemRotation:0b} if score PowerI bonus matches 1 at @s run function ww:bonuses/disable/power_1
execute as @e[type=item_frame,tag=PowerII] unless data entity @s {ItemRotation:0b} if score PowerII bonus matches 0 at @s run function ww:bonuses/enable/power_2
execute as @e[type=item_frame,tag=PowerII] unless data entity @s {ItemRotation:0b} if score PowerII bonus matches 1 at @s run function ww:bonuses/disable/power_2
execute as @e[type=item_frame,tag=Flame] unless data entity @s {ItemRotation:0b} if score Flame bonus matches 0 at @s run function ww:bonuses/enable/flame
execute as @e[type=item_frame,tag=Flame] unless data entity @s {ItemRotation:0b} if score Flame bonus matches 1 at @s run function ww:bonuses/disable/flame

execute as @e[type=item_frame,tag=Classic] unless data entity @s {ItemRotation:0b} at @s run function ww:presets/classic
execute as @e[type=item_frame,tag=RaceForLife] unless data entity @s {ItemRotation:0b} at @s run function ww:presets/race_for_life
execute as @e[type=item_frame,tag=ValuableArrows] unless data entity @s {ItemRotation:0b} at @s run function ww:presets/valuable_arrows


execute as @a[scores={input=0..}] run function ww:settings/input
execute as @a[scores={input=..-2}] run function ww:settings/wrong_input


execute as @a[nbt={Inventory:[{tag:{JoinTeam:"red"}}]}] run function ww:lobby/join_team/red
execute as @a[nbt={Inventory:[{tag:{JoinTeam:"yellow"}}]}] run function ww:lobby/join_team/yellow
execute as @a[nbt={Inventory:[{tag:{JoinTeam:"green"}}]}] run function ww:lobby/join_team/green
execute as @a[nbt={Inventory:[{tag:{JoinTeam:"blue"}}]}] run function ww:lobby/join_team/blue
execute as @a[nbt={Inventory:[{tag:{JoinTeam:"white"}}]}] run function ww:lobby/join_team/white



