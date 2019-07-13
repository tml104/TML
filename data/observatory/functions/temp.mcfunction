# 模块：瞭望
# 核心函数

# 瞭望位 Mk 实时保持和玩家同样的朝向
execute as @e[name=observatory] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[tag=obMk] at @s rotated as @p run tp @s ~ ~ ~ ~ ~

# 锁定玩家视角
execute as @a[tag=fov_locked] run tp @s @e[tag=obMk,limit=1]

# 菜单
	# Shift：切换缩放
	execute as @a[scores={shift=3..},tag=!zoomin_1_mk,tag=!zoomin_2_mk] run tag @s add zoomin_1
	execute as @a[scores={shift=3..},tag=zoomin_1_mk,tag=!zoomin_2_mk] run tag @s add zoomin_2
	execute as @a[scores={shift=3..},tag=zoomin_2_mk] run tag @s add zoomin_cancel
	
	scoreboard players reset @a[scores={shift=3..}] shift

# 一级放大
	# 将玩家 tp 到 10 格外处并缩小 FOV
	execute as @a[tag=zoomin_1] at @s run kill @e[tag=obMk,tag=lvl_2]
	execute as @a[tag=zoomin_1] at @e[name=observatory] run summon area_effect_cloud ^ ^ ^10 {Duration:2100000000,Tags:["obMk","lvl_1"]}
	execute as @a[tag=zoomin_1] at @s run effect clear @s slowness
	execute as @a[tag=zoomin_1] at @s run effect give @s slowness 1000000 2 true
	
	tag @a[tag=zoomin_1] add fov_locked
	tag @a[tag=zoomin_1] add zoomin_1_mk
	 
	tag @a[tag=zoomin_1] remove zoomin_1

# 二级放大
	# 将玩家 tp 到 15 格外处并缩小 FOV
	execute as @a[tag=zoomin_2] at @s run kill @e[tag=obMk,tag=lvl_1]
	execute as @a[tag=zoomin_2] at @e[name=observatory] run summon area_effect_cloud ^ ^ ^15 {Duration:2100000000,Tags:["obMk","lvl_2"]}
	execute as @a[tag=zoomin_2] at @s run effect give @s slowness 1000000 4 true
	
	tag @a[tag=zoomin_2] add fov_locked
	tag @a[tag=zoomin_2] add zoomin_2_mk
	
	tag @a[tag=zoomin_2] remove zoomin_2

# 返回
	# 将玩家 tp 回瞭望位并清除效果
	execute as @a[tag=zoomin_cancel] at @s run tp @s @e[name=observatory,limit=1]
	effect clear @a[tag=zoomin_cancel] slowness
	execute as @a[tag=zoomin_cancel] at @s run kill @e[tag=obMk]
	tag @a[tag=zoomin_cancel] remove fov_locked
	tag @a[tag=zoomin_cancel] remove zoomin_1_mk
	tag @a[tag=zoomin_cancel] remove zoomin_2_mk
	tag @a[tag=zoomin_cancel] remove zoomin_cancel
