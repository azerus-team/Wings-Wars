execute if score red game matches 1 if score yellow game matches 0 if score green game matches 0 if score blue game matches 0 run tellraw @a [{"text":"Red","color":"red"},{"text":" team has won!","color":"aqua"}]
execute if score red game matches 0 if score yellow game matches 1 if score green game matches 0 if score blue game matches 0 run tellraw @a [{"text":"Yellow","color":"yellow"},{"text":" team has won!","color":"aqua"}]
execute if score red game matches 0 if score yellow game matches 0 if score green game matches 1 if score blue game matches 0 run tellraw @a [{"text":"Green","color":"green"},{"text":" team has won!","color":"aqua"}]
execute if score red game matches 0 if score yellow game matches 0 if score green game matches 0 if score blue game matches 1 run tellraw @a [{"text":"Blue","color":"blue"},{"text":" team has won!","color":"aqua"}]
team leave @a
function ww:game/end