execute if score bob_count cm_count matches 0 run function animation:bob_spawn
#execute if score bob_count cm_count matches 0 run tp @s ~ ~-512 ~
tag @s add scan
scoreboard players add bob_count cm_count 1
execute if score bob_count cm_count matches 6 run scoreboard players set bob_count cm_count 0