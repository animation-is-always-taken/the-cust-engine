function animation:rng
effect give @s minecraft:levitation 1 2 true
execute if score @s rng matches 1 run execute in minecraft:overworld run tp @s 61 32 96
execute if score @s rng matches 2 run execute in minecraft:overworld run tp @s 97 38 -185
execute if score @s rng matches 4 run execute in minecraft:overworld run tp @s 237 95 -119
execute if score @s rng matches 5 run execute in minecraft:overworld run tp @s 261 49 -353
execute if score @s rng matches 6 run execute in minecraft:overworld run tp @s 0 ~ -100
execute if score @s rng matches 7 run execute in minecraft:overworld run tp @s 0 100 0
tag @s remove endtrapped
