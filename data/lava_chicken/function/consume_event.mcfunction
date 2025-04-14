#consume event
#once
execute as @a if score @s lava_chicken.consume = duration lava_chicken.duration run attribute @s movement_speed modifier add lava_chicken:lava_chicken.consume 0.04 add_value
execute as @a if score @s lava_chicken.consume = duration lava_chicken.duration run effect give @s regeneration infinite 0

#active
execute as @a if score @s lava_chicken.consume matches 1.. run advancement revoke @s only lava_chicken:consumed_lava_chicken
execute as @a at @s if score @s lava_chicken.consume matches 1.. run playsound block.furnace.fire_crackle player @s ~ ~ ~ 1 1
execute as @a if score @s lava_chicken.consume matches 1.. at @s positioned ~ ~.6 ~ run particle flame ^ ^ ^-.5 .2 .2 .2 .05 2 normal @a

#reset
execute as @a if score @s lava_chicken.consume matches 0 run effect clear @s regeneration
execute as @a at @s if score @s lava_chicken.consume matches 0 run playsound block.fire.extinguish player @s ~ ~ ~ .5 1
execute as @a if score @s lava_chicken.consume matches 0 run attribute @s movement_speed modifier remove lava_chicken:lava_chicken.consume
execute as @a if score @s lava_chicken.consume matches 0 run scoreboard players reset @s lava_chicken.consume
