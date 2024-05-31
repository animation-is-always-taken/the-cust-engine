clear @s minecraft:salmon_bucket[minecraft:custom_name=bob] 1
advancement revoke @s only animation:get_bob_bucket_const
give @s armor_stand[custom_model_data=1,minecraft:item_name="Bob",entity_data={id:"minecraft:armor_stand",ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,Tags:["bob_spawner"]}] 1