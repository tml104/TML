# 模块：瞭望
# 核心函数

# 打开菜单

# 一级放大
	# 在玩家朝向前 10 格处生成一个 AEC，并继承玩家的分数
	execute as @a[tag=zoomin_1] at @s run summon area_effect_cloud ^ ^ ^10 {Duration:2100000000,CustomName:"\"obMk\"",Tags:["zoomin_1"]}
	# 将玩家 tp 到相应 AEC 处并扩大 FOV
	execute as @a[tag=zoomin_1] at @s run tp @s @e[name=obMk,tag=zoomin_1,scores={obTemp=0}]
	execute as @a[tag=zoomin_1] at @s run effect give @s speed 1 2 true

# 二级放大

# 返回
	# 将玩家 tp 回瞭望位并清除效果
	execute as @a[tag=zoomin_cancel] at @s run tp @s @e[name=observatory,]
	
