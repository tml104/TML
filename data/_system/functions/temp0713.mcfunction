# temp
# 临时分配舰艇用

execute at @a[tag=inGame] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Invisible:0b,NoGravity:1b,Marker:1b,CustomName:'"vessel"',ArmorItems:[{},{},{},{id:"packed_ice",Count:1b}],Pose:{Head:[180f,0f,180f]},Tags:["vessel"]}
execute at @a[tag=inGame] run summon minecraft:silverfish ~ ~1 ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,CustomName:'"vesselM"',Tags:["vessel"]}

execute as @e[tag=vessel] at @s run scoreboard players add @s number 0
execute as @e[tag=vessel] at @s run scoreboard players operation @s number = @p[tag=inGame] number