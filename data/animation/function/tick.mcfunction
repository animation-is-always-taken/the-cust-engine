execute as @e[team=sirenas] run function animation:sirenas

#bob y peter
function animation:peter_function
function animation:bob_function
execute as @e[type=armor_stand,tag=bob_spawner] run function animation:bob_spawner
execute as @e[type=minecraft:cod,tag=!scan] at @s run function animation:bob_cap_check
execute as @e[type=minecraft:salmon,tag=!scan] at @s run function animation:bob_cap_check
execute as @e[type=minecraft:drowned,tag=!scan] at @s run function animation:peter_spawn_check
scoreboard players set bob_count bob_cap 0
execute as @e[type=salmon,tag=bob] run scoreboard players add bob_count bob_cap 1

#buzo y sonar
execute as @a if predicate animation:buzo run function animation:buzo
execute as @a store result score @s chunkX run data get entity @s Pos[0] 0.0625
execute as @a store result score @s chunkZ run data get entity @s Pos[2] 0.0625
execute as @a if predicate animation:sonar run title @s actionbar ["",{"text":"[","color":"aqua"},{"score":{"name":"@s","objective":"chunkX"},"color":"aqua"},{"text":",","color":"aqua"},{"score":{"name":"@s","objective":"chunkZ"},"color":"aqua"},{"text":"]","color":"aqua"}]

#endtraps y coso rng
execute at @e[type=minecraft:armor_stand,tag=endtrap] run execute as @e[distance=..1,tag=!endtrap] run tag @s add end_mail
execute as @e[tag=endtrapped,predicate=!animation:endtrapped] run function animation:endtrap_leave
execute as @e[tag=end_mail,predicate=animation:in_overworld] run execute in minecraft:the_end run tp @s -609 61 537
execute as @e[tag=end_mail,predicate=animation:in_end] run function animation:endtrap_enter
execute as @e[tag=end_mail,predicate=animation:in_end] run tag @s remove end_mail
tag @e[predicate=animation:in_overworld] remove endtrap_failsafe
tag @e[tag=endtrap_failsafe,tag=!endtrapped] add endtrapped 
function animation:spillover_func
execute if predicate animation:night_check run function animation:endtrap_spawner
execute if predicate animation:day_check run function animation:endtrap_despawner


#caleuche
execute if predicate animation:night_check if predicate animation:1in10 run function animation:caleuche_ov
execute if predicate animation:day_check run function animation:caleuche_ov_day

#tren, deshabilita despues del dia 1
function animation:minecarts_tren
execute at @e[type=armor_stand,tag=tren,limit=1] run tp @e[type=minecraft:block_display,distance=..20] ~-0.510 ~-3 ~-0.5 ~180 ~
execute at @e[type=minecart,limit=1,tag=tren] run tp @e[type=armor_stand,tag=tren,limit=1,distance=..3] ~ ~ ~ ~ ~

#PORQUE NO FUNCIONAN LAS ENDTRAPS?