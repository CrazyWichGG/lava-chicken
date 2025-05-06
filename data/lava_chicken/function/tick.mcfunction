#functions
function lava_chicken:death_detection
function lava_chicken:consume_event
function lava_chicken:trigger

#scoreboard timer
execute as @a if score @s lava_chicken.consume matches 1.. run scoreboard players remove @s lava_chicken.consume 1
