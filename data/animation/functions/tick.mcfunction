execute as @e[team=sirenas] run function animation:sirenas
function animation:peter_function
function animation:bob_function
execute as @e[type=armor_stand,tag=bob_spawner] run function animation:bob_spawner
execute as @a if predicate animation:buzo run function animation:buzo
execute as @a store result score @s chunkX run data get entity @s Pos[0] 0.0625
execute as @a store result score @s chunkZ run data get entity @s Pos[2] 0.0625
execute as @a if predicate animation:sonar run title @s actionbar ["",{"text":"[","color":"aqua"},{"score":{"name":"@s","objective":"chunkX"},"color":"aqua"},{"text":",","color":"aqua"},{"score":{"name":"@s","objective":"chunkZ"},"color":"aqua"},{"text":"]","color":"aqua"}]
execute as @a if predicate animation:sonar2 run title @s actionbar ["",{"text":"[","color":"aqua"},{"score":{"name":"@s","objective":"chunkX"},"color":"aqua"},{"text":",","color":"aqua"},{"score":{"name":"@s","objective":"chunkZ"},"color":"aqua"},{"text":"]","color":"aqua"}]
execute as @e[type=minecraft:cod,tag=!scan] at @s run function animation:bob_spawn_check
execute as @e[type=minecraft:drowned,tag=!scan] at @s run function animation:peter_spawn_check
execute if predicate animation:night_check if predicate animation:1in10 run function animation:caleuche_ov
execute if predicate animation:day_check run function animation:caleuche_ov_day
execute as @a[tag=endtrapped,predicate=!animation:endtrapped] at @s run function animation:endtrap_leave
execute as @a[tag=endtrap_failsafe,predicate=animation:endtrap_failsafe] at @s run funtion animation:endtrap_leave
function animation:spillover_func
function animation:minecarts_tren
execute at @e[type=armor_stand,tag=tren,limit=1] run tp @e[type=minecraft:block_display,distance=..20] ~-0.510 ~-3 ~-0.5 ~180 ~
execute at @e[type=minecart,limit=1,tag=tren] run tp @e[type=armor_stand,tag=tren,limit=1,distance=..3] ~ ~ ~ ~ ~

#no se porque, no quiero saber porque, pero las endtraps solo funcionan si se ejecutan los comandos 7 veces
