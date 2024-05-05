summon minecraft:dolphin ~ ~1 ~ {Passengers:[{id:"minecraft:drowned",LeftHanded:0,CanPickUpLoot:0b,Silent:1,IsBaby:1,ActiveEffects:[{Id:14,Amplifier:1,Duration:2147483647}],Tags:["peter"]}],Tags:["peter","unscanned"],Silent:1,ActiveEffects:[{Id:13,Amplifier:1,Duration:2147483647},{Id:14,Amplifier:1,Duration:2147483647}]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:0b,Marker:1b,NoBasePlate:1b,Tags:["peter_face","unscanned"],ArmorItems:[{},{},{},{id:"prismarine_shard",Count:1b,tag:{CustomModelData:1}}],HandItems:[{},{}]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:0b,Marker:1b,NoBasePlate:1b,Tags:["peter_body1","unscanned"],ArmorItems:[{},{},{},{id:"red_concrete",Count:1b}],HandItems:[{},{}]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:0b,Marker:1b,NoBasePlate:1b,Tags:["peter_body2","unscanned"],ArmorItems:[{},{},{},{id:"red_concrete",Count:1b}],HandItems:[{},{}]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:0b,Marker:1b,NoBasePlate:1b,Tags:["peter_body3","unscanned"],ArmorItems:[{},{},{},{id:"red_concrete",Count:1b}],HandItems:[{},{}]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:0b,Marker:1b,NoBasePlate:1b,Tags:["peter_body4","unscanned"],ArmorItems:[{},{},{},{id:"red_concrete",Count:1b}],HandItems:[{},{}]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:0b,Marker:1b,NoBasePlate:1b,Tags:["peter_body5","unscanned"],ArmorItems:[{},{},{},{id:"red_concrete",Count:1b}],HandItems:[{},{}]}
effect give @e[tag=peter] minecraft:invisibility infinite 1 true
effect give @e[tag=peter] minecraft:water_breathing infinite 1 true
scoreboard players add peter peter_id 1
scoreboard players operation @e[type=dolphin,tag=unscanned,limit=1,sort=nearest] peter_id = peter peter_id
scoreboard players operation @e[type=minecraft:armor_stand,tag=unscanned,limit=6,sort=nearest] peter_id = @e[tag=unscanned,type=minecraft:dolphin,limit=1,sort=nearest] peter_id
tag @e remove unscanned