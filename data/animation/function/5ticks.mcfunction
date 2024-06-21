#bob y peter
execute as @e[type=minecraft:cod,tag=!scan] at @s run function animation:bob_cap_check
execute as @e[type=minecraft:salmon,tag=!scan,tag=!bob] at @s run function animation:bob_cap_check
execute as @e[type=minecraft:drowned,tag=!scan,tag=!peter] at @s run function animation:peter_spawn_check

schedule function animation:5ticks 5t