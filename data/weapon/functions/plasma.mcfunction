# 模块：武器
# 电浆炮
# 直线发射，碰撞（方块/舰艇）后爆炸并伴随少量颗粒效果

# 射击：F 键
# 根据射击者朝向向前发射一个移动的实体，带颗粒效果，aec 持续时间 10 s
tag @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:gold_nugget"}]}] add shoot_plasma

execute at @s[tag=shoot_plasma] run summon area_effect_cloud ~ ~-0.5 ~ {Duration:200,CustomName:"\"plasma\"",Tags:["summoning"]}
execute as @e[name=plasma,tag=summoning] at @s rotated as @a[tag=inGame,tag=mod_weapon,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~ 
tag @e[name=plasma,tag=summoning] remove summoning

# reset
execute as @s[tag=shoot_plasma] run clear @s minecraft:gold_nugget
execute as @s[tag=shoot_plasma] run replaceitem entity @s hotbar.0 minecraft:gold_nugget
tag @s[tag=shoot_plasma] remove shoot_plasma

# tp Mk
execute as @e[name=plasma] at @s run tp @s ^ ^ ^0.8

# particles
execute at @e[name=plasma] run particle minecraft:sneeze ~ ~ ~ 0 0 0 0 1 force
execute at @e[name=plasma] run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0 1 force
execute at @e[name=plasma] run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force

# 撞到方块/舰艇后“爆炸”，给范围内模块损伤，给范围内玩家损伤，颗粒效果
execute as @e[name=plasma] at @s unless block ~ ~ ~ air run summon minecraft:firework_rocket ~ ~ ~ {"Silent":1b,"FireworksItem":{"id":"minecraft:firework_rocket","Count":1b,"tag":{"Fireworks":{"Explosions":[{"Colors":[I;4304440],"Type":0b,"Trail":0b},]}}}}
execute as @e[name=plasma] at @s if entity @e[name=vessel,distance=..3] run summon minecraft:firework_rocket ~ ~ ~ {"Silent":1b,"FireworksItem":{"id":"minecraft:firework_rocket","Count":1b,"tag":{"Fireworks":{"Explosions":[{"Colors":[I;4304440],"Type":0b,"Trail":0b},]}}}}

# 待添加
#execute as @e[name=plasma] at @s unless block ~ ~ ~ air run 
#execute as @e[name=plasma] at @s if entity @e[name=vessel,distance=..3] run 

execute as @e[name=plasma] at @s unless block ~ ~ ~ air run kill @s
execute as @e[name=plasma] at @s if entity @e[name=vessel,distance=..3] run kill @s