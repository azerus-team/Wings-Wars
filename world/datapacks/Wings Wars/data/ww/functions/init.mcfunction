datapack disable vanilla

difficulty peaceful
defaultgamemode adventure
gamerule announceAdvancements false
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule doEntityDrops false
gamerule doTileDrops false
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule keepInventory true
gamerule randomTickSpeed 0
gamerule reducedDebugInfo true
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule spawnRadius 0
time set 6000
weather clear

scoreboard objectives add global dummy
scoreboard objectives add Settings dummy
scoreboard objectives add game dummy
scoreboard objectives add left minecraft.custom:minecraft.leave_game
scoreboard objectives add arrow dummy
scoreboard objectives add arrowTimer dummy
scoreboard objectives add fly minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add flyPercents dummy
scoreboard objectives add lifes dummy
scoreboard objectives add dead minecraft.custom:minecraft.time_since_death
scoreboard objectives add bonus dummy
scoreboard objectives add type dummy
scoreboard objectives add generate dummy
scoreboard objectives add neighbors dummy
scoreboard objectives add layer dummy
scoreboard objectives add zone dummy
scoreboard objectives add additionalLife minecraft.picked_up:minecraft.totem_of_undying
scoreboard objectives add protection minecraft.picked_up:minecraft.diamond_chestplate
scoreboard objectives add shot minecraft.used:minecraft.bow
scoreboard objectives add damageTaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add damageTakenTenth minecraft.custom:minecraft.damage_taken
scoreboard objectives add input trigger
scoreboard objectives add witherTimer dummy

scoreboard players set Const10 global 10
scoreboard players set Const100 global 100
scoreboard players set Const500 global 500
scoreboard players set Const-1 global -1
scoreboard players operation GameState global = GameState global
scoreboard players operation IsMapGenerated global = IsMapGenerated global

team add red
team add yellow
team add green
team add blue
team modify red color red
team modify yellow color yellow
team modify green color green
team modify blue color blue

data merge storage ww {BonusesDisplay:["","","","","","","","","","","",""]}

execute as @e[tag=ResetSettings] at @s run function ww:reset/settings
function ww:reset/types
execute as @e[tag=ResetBonuses] at @s run function ww:reset/bonuses

team add goldColor
team add redColor
team add grayColor
team add aquaColor
team add purpleColor
team modify goldColor color gold
team modify redColor color red
team modify grayColor color gray
team modify aquaColor color aqua
team modify purpleColor color dark_purple

bossbar add bonus_timer {"text":"Bonusbar","color":"green"}
bossbar set bonus_timer max 100

forceload add 1429 1429 1571 1571

scoreboard players set WingsWars isInitialized 1