execute if score ArrowGiven game < MaxArrows Settings run give @s arrow{display:{Name:'{"text":"Arrow","color":"gray","italic":"false"}'}}
scoreboard players add ArrowGiven game 1
execute if score ArrowGiven game < MaxArrows Settings run function ww:game/max_arrow
execute if score ArrowGiven game >= MaxArrows Settings run scoreboard players set ArrowGiven game 0