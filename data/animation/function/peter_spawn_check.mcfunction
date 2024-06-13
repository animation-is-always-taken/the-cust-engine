execute if score peter_count cm_count matches 0 run function animation:peter_spawn
execute if score peter_count cm_count matches 0 run tp @s ~ ~-512 ~
tag @s add scan
scoreboard players add peter_count cm_count 1
execute if score peter_count cm_count matches 6 run scoreboard players set peter_count cm_count 0