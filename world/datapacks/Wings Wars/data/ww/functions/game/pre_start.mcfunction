data remove storage ww Bonuses
execute if score AdditionalLife bonus matches 1 run data modify storage ww Bonuses append value {Tags:["BonusItem","gold"],Item:{id:"totem_of_undying",Count:1,tag:{display:{Name:'{"text":"+1 Life","color":"gold","italic":"false"}'}}},CustomName:'{"text":"+1 Life","color":"gold"}'}
execute if score 4xArrow bonus matches 1 run data modify storage ww Bonuses append value {Tags:["BonusItem","gray"],Item:{id:"arrow",Count:4,tag:{display:{Name:'{"text":"Arrow","color":"gray","italic":"false"}'}}},CustomName:'{"text":"Arrow x4","color":"gray"}'}
execute if score 8xArrow bonus matches 1 run data modify storage ww Bonuses append value {Tags:["BonusItem","gray"],Item:{id:"arrow",Count:8,tag:{display:{Name:'{"text":"Arrow","color":"gray","italic":"false"}'}}},CustomName:'{"text":"Arrow x8","color":"gray"}'}
execute if score 12xArrow bonus matches 1 run data modify storage ww Bonuses append value {Tags:["BonusItem","gray"],Item:{id:"arrow",Count:12,tag:{display:{Name:'{"text":"Arrow","color":"gray","italic":"false"}'}}},CustomName:'{"text":"Arrow x12","color":"gray"}'}
execute if score 16xArrow bonus matches 1 run data modify storage ww Bonuses append value {Tags:["BonusItem","gray"],Item:{id:"arrow",Count:16,tag:{display:{Name:'{"text":"Arrow","color":"gray","italic":"false"}'}}},CustomName:'{"text":"Arrow x16","color":"gray"}'}
execute if score 3xFirework bonus matches 1 run data modify storage ww Bonuses append value {Tags:["BonusItem","red"],Item:{id:"firework_rocket",Count:3,tag:{Fireworks:{},display:{Name:'{"text":"Firework","color":"red","italic":"false"}'}}},CustomName:'{"text":"Firework x3","color":"red"}'}
execute if score 4xFirework bonus matches 1 run data modify storage ww Bonuses append value {Tags:["BonusItem","red"],Item:{id:"firework_rocket",Count:4,tag:{Fireworks:{},display:{Name:'{"text":"Firework","color":"red","italic":"false"}'}}},CustomName:'{"text":"Firework x4","color":"red"}'}
execute if score 5xFirework bonus matches 1 run data modify storage ww Bonuses append value {Tags:["BonusItem","red"],Item:{id:"firework_rocket",Count:5,tag:{Fireworks:{},display:{Name:'{"text":"Firework","color":"red","italic":"false"}'}}},CustomName:'{"text":"Firework x5","color":"red"}'}
execute if score Protection bonus matches 1 run data modify storage ww Bonuses append value {Tags:["BonusItem","aqua"],Item:{id:"diamond_chestplate",Count:1,tag:{display:{Name:'{"text":"Protection","color":"aqua","italic":"false"}'}}},CustomName:'{"text":"Protection","color":"aqua"}'}
execute if score PowerI bonus matches 1 run data modify storage ww Bonuses append value {Tags:["BonusItem","purple"],Item:{id:"enchanted_book",Count:1,tag:{PowerI:1b,StoredEnchantments:[],display:{Name:'{"text":"Power I","color":"dark_purple","italic":"false"}'}}},CustomName:'{"text":"Power I","color":"dark_purple"}'}
execute if score PowerII bonus matches 1 run data modify storage ww Bonuses append value {Tags:["BonusItem","purple"],Item:{id:"enchanted_book",Count:1,tag:{PowerII:1b,StoredEnchantments:[],display:{Name:'{"text":"Power II","color":"dark_purple","italic":"false"}'}}},CustomName:'{"text":"Power II","color":"dark_purple"}'}
execute if score Flame bonus matches 1 run data modify storage ww Bonuses append value {Tags:["BonusItem","purple"],Item:{id:"enchanted_book",Count:1,tag:{Flame:1b,StoredEnchantments:[],display:{Name:'{"text":"Flame","color":"dark_purple","italic":"false"}'}}},CustomName:'{"text":"Flame","color":"dark_purple"}'}
execute store result score BonusAmount generate if data storage ww Bonuses[]

effect clear @a
clear @a
kill @e[type=item]
tag @a remove protection1
tag @a remove protection2
tag @a remove protection3
tag @a remove protection4
tag @a remove protection5
scoreboard players reset @a fly
scoreboard players reset @a arrowTimer
scoreboard players reset @a damageTaken
scoreboard players reset @a damageTakenTenth
scoreboard players reset bonusTimer game
gamemode adventure @a[team=!]
gamemode spectator @a[team=]
execute if score FFA Settings matches 1 run gamemode adventure @a
tag @a[gamemode=adventure] add protection0
scoreboard players set @a dead 2
effect give @a weakness 15 255 true
effect give @a resistance 15 255 true
effect give @a invisibility 15 255 true
effect give @a regeneration 15 255 true
effect give @a saturation 999999 255 true
execute if score HandCombat Settings matches 0 run effect give @a weakness 999999 255 true
scoreboard players operation @a lifes = Lifes Settings
scoreboard players set ArrowGiven game 0
scoreboard players set Deathmatch game 0
scoreboard players set @a[gamemode=adventure] witherTimer 0
execute as @a[gamemode=adventure] run function ww:game/max_arrow
tag @a[tag=red] remove red
tag @a[tag=yellow] remove yellow
tag @a[tag=green] remove green
tag @a[tag=blue] remove blue
tag @a[team=red] add red
tag @a[team=yellow] add yellow
tag @a[team=green] add green
tag @a[team=blue] add blue
team leave @a
execute if score FriendlyFire Settings matches 1.. run function ww:game/enable_friendly_fire

scoreboard players operation BonusAmount Settings = BonusAmountMax Settings
scoreboard players operation BonusAmount Settings -= BonusAmountMin Settings
scoreboard players add BonusAmount Settings 1

replaceitem entity @a[gamemode=adventure] armor.chest air
execute as @a run tp @s @e[tag=Spawn,sort=random,limit=1]
replaceitem entity @a[gamemode=adventure] armor.chest elytra{HideFlags:5,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
bossbar set bonus_timer players @a

scoreboard objectives setdisplay list lifes


data merge block -11 113 28 {Text2:'{"text":"The Game","color":"white","underlined":true}',Text3:'{"text":"is started","color":"white","underlined":true}'}

tellraw @a [{"text":"- Current Game Settings -"}]
tellraw @a ["",{"text":"Lifes","color":"gold"},{"text":" - "},{"score":{"name":"Lifes","objective":"Settings"}}]
tellraw @a ["",{"text":"Maximum "},{"text":"lifes","color":"gold"},{"text":" - "},{"score":{"name":"MaxLifes","objective":"Settings"}}]
tellraw @a ["",{"text":"Bonuses","color":"green"},{"text":" appear in - "},{"score":{"name":"BonusTime","objective":"Settings"}},{"text":" - ticks"}]
tellraw @a ["",{"text":"Bonuses","color":"green"},{"text":" disappear in - "},{"score":{"name":"BonusDisappearTime","objective":"Settings"}},{"text":" - ticks"}]
tellraw @a ["",{"text":"Minimal "},{"text":"bonuses","color":"green"},{"text":" amount  - "},{"score":{"name":"BonusAmountMin","objective":"Settings"}}]
tellraw @a ["",{"text":"Maximal "},{"text":"bonuses","color":"green"},{"text":" amount  - "},{"score":{"name":"BonusAmountMax","objective":"Settings"}}]
tellraw @a ["",{"text":"Maximum "},{"text":"arrows","color":"gray"},{"text":" - "},{"score":{"name":"MaxArrows","objective":"Settings"}}]
tellraw @a ["",{"text":"Arrow","color":"gray"},{"text":" in - "},{"score":{"name":"ArrowTime","objective":"Settings"}},{"text":" - ticks"}]
tellraw @a ["",{"text":"Deathmatch","color":"dark_red"},{"text":" in - "},{"score":{"name":"DeathmatchTime","objective":"Settings"}},{"text":" - ticks"}]
execute if score Ballistics Settings matches 0 run tellraw @a [{"text":"Ballistics - "},{"text":"off","color":"red"}]
execute if score Ballistics Settings matches 1 run tellraw @a [{"text":"Ballistics - "},{"text":"on","color":"green"}]
execute if score HandCombat Settings matches 0 run tellraw @a [{"text":"Hand Combat - "},{"text":"off","color":"red"}]
execute if score HandCombat Settings matches 1 run tellraw @a [{"text":"Hand Combat - "},{"text":"on","color":"green"}]
execute if score FriendlyFire Settings matches 0 run tellraw @a [{"text":"Friendly Fire - "},{"text":"off","color":"red"}]
execute if score FriendlyFire Settings matches 1 run tellraw @a [{"text":"Friendly Fire - "},{"text":"on","color":"green"}]
execute if score FFA Settings matches 0 run tellraw @a [{"text":"FFA Mode - "},{"text":"off","color":"red"}]
execute if score FFA Settings matches 1 run tellraw @a [{"text":"FFA Mode - "},{"text":"on","color":"green"}]
tellraw @a [{"text":"- Bonuses -\n"}," ",{"nbt":"BonusesDisplay[0]","storage":"ww","color":"gold"}," ",{"nbt":"BonusesDisplay[1]","storage":"ww","color":"gray"}," ",{"nbt":"BonusesDisplay[2]","storage":"ww","color":"gray"}," ",{"nbt":"BonusesDisplay[3]","storage":"ww","color":"gray"}," ",{"nbt":"BonusesDisplay[4]","storage":"ww","color":"gray"}," ",{"nbt":"BonusesDisplay[5]","storage":"ww","color":"red"}," ",{"nbt":"BonusesDisplay[6]","storage":"ww","color":"red"}," ",{"nbt":"BonusesDisplay[7]","storage":"ww","color":"red"}," ",{"nbt":"BonusesDisplay[8]","storage":"ww","color":"aqua"}," ",{"nbt":"BonusesDisplay[9]","storage":"ww","color":"dark_purple"}," ",{"nbt":"BonusesDisplay[10]","storage":"ww","color":"dark_purple"}," ",{"nbt":"BonusesDisplay[11]","storage":"ww","color":"dark_purple"}]

schedule function ww:game/start 15s
scoreboard players set GameState global 2