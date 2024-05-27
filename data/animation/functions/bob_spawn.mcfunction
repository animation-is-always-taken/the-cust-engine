summon minecraft:salmon ~ ~ ~ {CustomName:'{"text":"bob"}',PersistenceRequired:0b,CanPickUpLoot:0b,Health:10,Attributes:[{Name:"generic.max_health",Base:10}],Health:10,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}],Tags:["bob","unscanned"]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:0b,Marker:1b,NoBasePlate:1b,Tags:["bob_face","unscanned"],ArmorItems:[{},{},{},{id:"prismarine_crystals",components:{"minecraft:custom_model_data":1}}],HandItems:[{},{}]}
#summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoBasePlate:1b,Tags:["bob_body","unscanned"],ArmorItems:[{},{},{},{id:"blue_concrete",Count:1b}],HandItems:[{},{}]}
effect give @e[tag=bob] minecraft:invisibility infinite 1 true
scoreboard players add bob bob_id 1
scoreboard players operation @e[type=salmon,tag=unscanned,limit=1,sort=nearest] bob_id = bob bob_id
scoreboard players operation @e[type=minecraft:armor_stand,tag=unscanned,limit=6,sort=nearest] bob_id = @e[tag=unscanned,type=minecraft:salmon,limit=1,sort=nearest] bob_id
tag @e remove unscanned