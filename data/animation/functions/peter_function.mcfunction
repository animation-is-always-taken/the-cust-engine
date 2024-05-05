execute as @e[tag=peter,type=dolphin] at @s as @e[type=armor_stand,tag=peter_face] if score @s peter_id = @e[type=minecraft:dolphin,tag=peter,limit=1,sort=nearest] peter_id run tp @s ~ ~-2 ~ ~180 ~
execute as @e[tag=peter,type=dolphin] at @s as @e[type=armor_stand,tag=peter_body1] if score @s peter_id = @e[type=minecraft:dolphin,tag=peter,limit=1,sort=nearest] peter_id run tp @s ^ ^-1.5 ^-0.14 ~ ~
execute as @e[tag=peter,type=dolphin] at @s as @e[type=armor_stand,tag=peter_body2] if score @s peter_id = @e[type=minecraft:dolphin,tag=peter,limit=1,sort=nearest] peter_id run tp @s ^ ^-1.5 ^-0.60 ~ ~
execute as @e[tag=peter,type=dolphin] at @s as @e[type=armor_stand,tag=peter_body3] if score @s peter_id = @e[type=minecraft:dolphin,tag=peter,limit=1,sort=nearest] peter_id run tp @s ^ ^-1.5 ^-1 ~ ~
execute as @e[tag=peter,type=dolphin] at @s as @e[type=armor_stand,tag=peter_body4] if score @s peter_id = @e[type=minecraft:dolphin,tag=peter,limit=1,sort=nearest] peter_id run tp @s ^ ^-1.5 ^-1.50 ~ ~
execute as @e[tag=peter,type=dolphin] at @s as @e[type=armor_stand,tag=peter_body5] if score @s peter_id = @e[type=minecraft:dolphin,tag=peter,limit=1,sort=nearest] peter_id run tp @s ^ ^-1.5 ^-2 ~ ~

#kill 

execute as @e[type=minecraft:dolphin,tag=peter] at @s unless entity @e[type=minecraft:drowned,distance=..3] run kill @s
execute as @e[type=minecraft:drowned,tag=peter] at @s unless entity @e[type=minecraft:dolphin,distance=..3] run kill @s
execute as @e[type=minecraft:armor_stand,tag=peter_face] at @s unless entity @e[type=minecraft:dolphin,distance=..3] run kill @s
execute as @e[type=minecraft:armor_stand,tag=peter_body1] at @s unless entity @e[type=minecraft:dolphin,distance=..3] run kill @s
execute as @e[type=minecraft:armor_stand,tag=peter_body2] at @s unless entity @e[type=minecraft:dolphin,distance=..3] run kill @s
execute as @e[type=minecraft:armor_stand,tag=peter_body3] at @s unless entity @e[type=minecraft:dolphin,distance=..3] run kill @s
execute as @e[type=minecraft:armor_stand,tag=peter_body4] at @s unless entity @e[type=minecraft:dolphin,distance=..3] run kill @s
execute as @e[type=minecraft:armor_stand,tag=peter_body5] at @s unless entity @e[type=minecraft:dolphin,distance=..3] run kill @s
