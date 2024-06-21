execute as @e[tag=bob,type=salmon] at @s as @e[type=armor_stand,tag=bob_face] if score @s bob_id = @e[type=minecraft:salmon,tag=bob,limit=1,sort=nearest] bob_id run tp @s ^ ^-1.5 ^-0.14 ~ ~
#execute as @e[tag=bob,type=salmon] at @s as @e[type=armor_stand,tag=bob_body] if score @s bob_id = @e[type=minecraft:salmon,tag=bob,limit=1,sort=nearest] bob_id run tp @s ^ ^-1.5 ^-0.14 ~ ~

#kill model
execute as @e[type=minecraft:armor_stand,tag=bob_face] at @s unless entity @e[type=minecraft:salmon,distance=..2] run kill @s
execute as @e[type=minecraft:armor_stand,tag=bob_body] at @s unless entity @e[type=minecraft:salmon,distance=..2] run kill @s
execute as @e[tag=bob_face] at @s if entity @e[tag=bob,distance=3..] unless entity @e[tag=bob,distance=..2] run tp @s @e[tag=bob,limit=1,sort=nearest]
execute as @e[tag=bob_body] at @s if entity @e[tag=bob,distance=3..] unless entity @e[tag=bob,distance=..2] run tp @s @e[tag=bob,limit=1,sort=nearest]