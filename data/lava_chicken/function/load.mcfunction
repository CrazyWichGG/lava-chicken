#create scoreboard
scoreboard objectives add lava_chicken.consume dummy
scoreboard objectives add lava_chicken.duration dummy
scoreboard objectives add lava_chicken.death deathCount
scoreboard objectives add lava_chicken.config.duration trigger

#set default values
execute unless score duration lava_chicken.duration = duration lava_chicken.duration run scoreboard players set duration lava_chicken.duration 160
