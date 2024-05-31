execute as @a[distance=..15] run execute positioned -256 77 18 run function animation:zeppeling_spawn
execute unless block ~ ~1 ~ minecraft:soul_sand run setblock ~ ~ ~ minecraft:soul_sand
execute unless block ~ ~ ~1 minecraft:soul_sand run setblock ~ ~ ~ minecraft:soul_sand
execute unless block ~ ~ ~-1 minecraft:soul_sand run setblock ~ ~ ~ minecraft:soul_sand
execute unless block ~ ~-1 ~ minecraft:soul_sand run setblock ~ ~ ~ minecraft:soul_sand
execute unless block ~1 ~ ~ minecraft:soul_sand run setblock ~ ~ ~ minecraft:soul_sand
execute unless block ~-1 ~ ~ minecraft:soul_sand run setblock ~ ~ ~ minecraft:soul_sand