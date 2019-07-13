# 模块：武器
# 激光

# 射击：F 键
tag @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bone"}]}] add shoot_laser

# 自动瞄准：确定 50 格内最近的舰艇或导弹类实体为目标（优先导弹类实体）
execute at @s[tag=shoot_laser,tag=auto] unless entity @e[tag=target] run tag @e[tag=missile,distance=..50,sort=nearest,limit=1] add target
execute at @s[tag=shoot_laser,tag=auto] unless entity @e[tag=target] run tag @e[name=vessel,distance=..50,sort=nearest,limit=1] add target
execute at @s[tag=shoot_laser,tag=auto] at @e[tag=target,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:400,CustomName:"\"laserMk\""}
tag @e[tag=target] remove target

# 依次生成三个基准实体并射向目标，particles 点动成线，aec 持续时间 10 s
execute at @s[tag=shoot_laser] run tag @e[tag=latest] remove latest
execute at @s[tag=shoot_laser,tag=auto] facing entity @e[name=laserMk,limit=1] eyes run summon area_effect_cloud ^ ^ ^0.5 {CustomName:"\"laser\"",Tags:["latest"],Duration:400}
execute at @s[tag=shoot_laser,tag=!auto] run summon area_effect_cloud ^ ^ ^0.5 {CustomName:"\"laser\"",Tags:["latest"],Duration:400}

# tp + detect (三次)
execute as @e[name=laser,tag=latest] at @s facing entity @e[name=laserMk,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[name=laser,tag=latest] at @s rotated as @p[tag=shoot_laser,tag=!auto] run tp @s ~ ~ ~ ~ ~
execute as @e[name=laser] at @s run tp @s ^ ^ ^2

execute as @e[name=laser] at @s if entity @e[name=laserMk,distance=..3] run tag @s add hit_Mk
execute as @e[name=laser,tag=hit_Mk] at @s run kill @e[name=laserMk,distance=..3]

execute as @e[name=laser] at @s if entity @e[name=vessel,distance=..1.2] run tag @s add hit_vessel
#execute as @e[name=laser,tag=hit_vessel] at @s run 
execute as @e[name=laser,tag=hit_vessel] at @s run summon minecraft:firework_rocket ~ ~ ~ {"Silent":1b,"FireworksItem":{"id":"minecraft:firework_rocket","Count":1b,"tag":{"Fireworks":{"Explosions":[{"Colors":[I;1803740],"Type":0b,"Trail":0b},]}}}}
execute as @e[name=laser,tag=hit_vessel] run kill @s

	# 方块撞击判定
	execute as @e[name=laser] at @s unless block ~ ~ ~ air run kill @s

	# particles
	execute at @e[name=laser] run particle minecraft:end_rod ^ ^ ^ 0 0 0 0.01 10 force
	execute at @e[name=laser] run particle minecraft:end_rod ^ ^ ^-0.5 0 0 0 0.01 10 force
	execute at @e[name=laser] run particle minecraft:end_rod ^ ^ ^-1 0 0 0 0.01 10 force
	execute at @e[name=laser] run particle minecraft:end_rod ^ ^ ^-1.5 0 0 0 0.01 10 force

execute as @e[name=laser,tag=latest] at @s facing entity @e[name=laserMk,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[name=laser,tag=latest] at @s rotated as @p[tag=shoot_laser,tag=!auto] run tp @s ~ ~ ~ ~ ~
execute as @e[name=laser] at @s run tp @s ^ ^ ^2

execute as @e[name=laser] at @s if entity @e[name=laserMk,distance=..3] run tag @s add hit_Mk
execute as @e[name=laser,tag=hit_Mk] at @s run kill @e[name=laserMk,distance=..3]

execute as @e[name=laser] at @s if entity @e[name=vessel,distance=..1.2] run tag @s add hit_vessel
#execute as @e[name=laser,tag=hit_vessel] at @s run 
execute as @e[name=laser,tag=hit_vessel] at @s run summon minecraft:firework_rocket ~ ~ ~ {"Silent":1b,"FireworksItem":{"id":"minecraft:firework_rocket","Count":1b,"tag":{"Fireworks":{"Explosions":[{"Colors":[I;1803740],"Type":0b,"Trail":0b},]}}}}
execute as @e[name=laser,tag=hit_vessel] run kill @s

	# 方块撞击判定
	execute as @e[name=laser] at @s unless block ~ ~ ~ air run kill @s

	# particles
	execute at @e[name=laser] run particle minecraft:end_rod ^ ^ ^ 0 0 0 0.01 10 force
	execute at @e[name=laser] run particle minecraft:end_rod ^ ^ ^-0.5 0 0 0 0.01 10 force
	execute at @e[name=laser] run particle minecraft:end_rod ^ ^ ^-1 0 0 0 0.01 10 force
	execute at @e[name=laser] run particle minecraft:end_rod ^ ^ ^-1.5 0 0 0 0.01 10 force

execute as @e[name=laser,tag=latest] at @s facing entity @e[name=laserMk,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[name=laser,tag=latest] at @s rotated as @p[tag=shoot_laser,tag=!auto] run tp @s ~ ~ ~ ~ ~
execute as @e[name=laser] at @s run tp @s ^ ^ ^2

execute as @e[name=laser] at @s if entity @e[name=laserMk,distance=..3] run tag @s add hit_Mk
execute as @e[name=laser,tag=hit_Mk] at @s run kill @e[name=laserMk,distance=..3]

execute as @e[name=laser] at @s if entity @e[name=vessel,distance=..1.2] run tag @s add hit_vessel
#execute as @e[name=laser,tag=hit_vessel] at @s run 
execute as @e[name=laser,tag=hit_vessel] at @s run summon minecraft:firework_rocket ~ ~ ~ {"Silent":1b,"FireworksItem":{"id":"minecraft:firework_rocket","Count":1b,"tag":{"Fireworks":{"Explosions":[{"Colors":[I;1803740],"Type":0b,"Trail":0b},]}}}}
execute as @e[name=laser,tag=hit_vessel] run kill @s

	# 方块撞击判定
	execute as @e[name=laser] at @s unless block ~ ~ ~ air run kill @s

	# particles
	execute at @e[name=laser] run particle minecraft:end_rod ^ ^ ^ 0 0 0 0.01 10 force
	execute at @e[name=laser] run particle minecraft:end_rod ^ ^ ^-0.5 0 0 0 0.01 10 force
	execute at @e[name=laser] run particle minecraft:end_rod ^ ^ ^-1 0 0 0 0.01 10 force
	execute at @e[name=laser] run particle minecraft:end_rod ^ ^ ^-1.5 0 0 0 0.01 10 force
	
# reset
execute as @s[tag=shoot_laser] run clear @s minecraft:bone
execute as @s[tag=shoot_laser] run replaceitem entity @s hotbar.1 minecraft:bone
tag @s[tag=shoot_laser] remove shoot_laser