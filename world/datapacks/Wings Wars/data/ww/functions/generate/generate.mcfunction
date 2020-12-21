data merge block -17 114 88 {Text2:'{"text":"Generating Map...","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"A map is being currently generated!\\",\\"color\\":\\"red\\"}"}}'}
tellraw @a {"text":"Map is being generated. All lobby mechanics are unavailable.","color":"aqua"}
function ww:generate/clear

data remove storage ww Types
execute if score Nature type matches 1 run function ww:add/nature
execute if score AncientCivilization type matches 1 run function ww:add/ancient_civilization
execute store result score TypeAmount generate if data storage ww Types[]
scoreboard players set timer generate 0
scoreboard players set GameState global 1