function animation:rng
execute if score @s rng matches 1 run execute in minecraft:overworld run tp @s 61 33 96
execute if score @s rng matches 2 run execute in minecraft:overworld run tp @s 97 39 -185
execute if score @s rng matches 3 run execute in minecraft:overworld run tp @s -197 43.1 -433
execute if score @s rng matches 4 run execute in minecraft:overworld run tp @s 237 96 -119
execute if score @s rng matches 5 run execute in minecraft:overworld run tp @s 261 50 -353
execute if score @s rng matches 6 run execute in minecraft:overworld run tp @s -59 36 -508
execute if score @s rng matches 7 run execute in minecraft:overworld run tp @s -772 55 -654
effect give @s minecraft:levitation 1 1 true
tag @s remove endtrapped