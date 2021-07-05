give @a[gamemode=adventure] bow{Unbreakable:1}
effect give @a[gamemode=adventure] glowing 999999 255 true
team join red @a[tag=red]
team join yellow @a[tag=yellow]
team join green @a[tag=green]
team join blue @a[tag=blue]
execute if score FFA Settings matches 1 run team leave @a
