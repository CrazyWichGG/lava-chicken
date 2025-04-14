#enable trigger scoreboard
execute as @a unless score @s lava_chicken.config.duration = @s lava_chicken.config.duration run scoreboard players enable @s lava_chicken.config.duration

#set default values
execute as @a if score @s lava_chicken.config.duration matches ..-1 run tellraw @s [{"text":"Reset Lava Chicken duration to default value.","color":"green"}]
execute as @a if score @s lava_chicken.config.duration matches ..-1 run scoreboard players set @s lava_chicken.config.duration 160
execute as @a if score @s lava_chicken.config.duration matches ..-1 run scoreboard players reset @s lava_chicken.config.duration

#value 0
# no action

#invalid value
execute as @a if score @s lava_chicken.config.duration matches 1 run tellraw @s [{"text":"Lava Chicken effect duration cannot be lower than 2 ticks.","color":"red"}]
execute as @a if score @s lava_chicken.config.duration matches 1 run scoreboard players reset @s lava_chicken.config.duration

#set values
execute as @a if score @s lava_chicken.config.duration matches 2.. run tellraw @s [{"text":"Lava Chicken effect duration has been set to ","color":"green"},{score:{name:"@s",objective:lava_chicken.config.duration}},{text:" ticks.","color":"green"}]
execute as @a if score @s lava_chicken.config.duration matches 2.. run scoreboard players operation duration lava_chicken.duration = @s lava_chicken.config.duration
execute as @a if score @s lava_chicken.config.duration matches 2.. run scoreboard players reset @s lava_chicken.config.duration
