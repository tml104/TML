# 模块：舰艇移动
# 加速
# module tag: mod_movement
# obj: accel, MotionX(Y/Z), MotionX(Y/Z)T
# entities: accelMk, vessel, vesselM

# 一档：0.002 (Max: )
# 二档：0.005 (Max: )
# 三档：0.01  (Max: )
# 负一档：0.001 (Max: )
# 负二档：0.0025 (Max: )

# 卡加速度上下限
scoreboard players set @a[scores={accel=4..}] accel 3
scoreboard players set @a[scores={accel=..-3}] accel -2

# 在 0.0 0.0 0.0 处设置一个媒介 Mk，通过对其的操作获取 Motion
tp @e[name=accelMk] 0.0 0.0 0.0

execute as @e[name=accelMk,tag=1] at @s if entity @a[scores={accel=1,number=1}] rotated as @e[name=vessel,limit=1,scores={number=1}] run tp @s ^ ^ ^0.002
execute as @e[name=accelMk,tag=1] at @s if entity @a[scores={accel=2,number=1}] rotated as @e[name=vessel,limit=1,scores={number=1}] run tp @s ^ ^ ^0.005
execute as @e[name=accelMk,tag=1] at @s if entity @a[scores={accel=3,number=1}] rotated as @e[name=vessel,limit=1,scores={number=1}] run tp @s ^ ^ ^0.01
execute as @e[name=accelMk,tag=1] at @s if entity @a[scores={accel=-1,number=1}] rotated as @e[name=vessel,limit=1,scores={number=1}] run tp @s ^ ^ ^0.001
execute as @e[name=accelMk,tag=1] at @s if entity @a[scores={accel=-2,number=1}] rotated as @e[name=vessel,limit=1,scores={number=1}] run tp @s ^ ^ ^0.0025

execute as @e[name=accelMk,tag=2] at @s if entity @a[scores={accel=1,number=2}] rotated as @e[name=vessel,limit=1,scores={number=2}] run tp @s ^ ^ ^0.002
execute as @e[name=accelMk,tag=2] at @s if entity @a[scores={accel=2,number=2}] rotated as @e[name=vessel,limit=1,scores={number=2}] run tp @s ^ ^ ^0.005
execute as @e[name=accelMk,tag=2] at @s if entity @a[scores={accel=3,number=2}] rotated as @e[name=vessel,limit=1,scores={number=2}] run tp @s ^ ^ ^0.01
execute as @e[name=accelMk,tag=2] at @s if entity @a[scores={accel=-1,number=2}] rotated as @e[name=vessel,limit=1,scores={number=2}] run tp @s ^ ^ ^0.001
execute as @e[name=accelMk,tag=2] at @s if entity @a[scores={accel=-2,number=2}] rotated as @e[name=vessel,limit=1,scores={number=2}] run tp @s ^ ^ ^0.0025

execute as @e[name=accelMk,tag=3] at @s if entity @a[scores={accel=1,number=3}] rotated as @e[name=vessel,limit=1,scores={number=3}] run tp @s ^ ^ ^0.002
execute as @e[name=accelMk,tag=3] at @s if entity @a[scores={accel=2,number=3}] rotated as @e[name=vessel,limit=1,scores={number=3}] run tp @s ^ ^ ^0.005
execute as @e[name=accelMk,tag=3] at @s if entity @a[scores={accel=3,number=3}] rotated as @e[name=vessel,limit=1,scores={number=3}] run tp @s ^ ^ ^0.01
execute as @e[name=accelMk,tag=3] at @s if entity @a[scores={accel=-1,number=3}] rotated as @e[name=vessel,limit=1,scores={number=3}] run tp @s ^ ^ ^0.001
execute as @e[name=accelMk,tag=3] at @s if entity @a[scores={accel=-2,number=3}] rotated as @e[name=vessel,limit=1,scores={number=3}] run tp @s ^ ^ ^0.0025

execute as @e[name=accelMk,tag=4] at @s if entity @a[scores={accel=1,number=4}] rotated as @e[name=vessel,limit=1,scores={number=4}] run tp @s ^ ^ ^0.002
execute as @e[name=accelMk,tag=4] at @s if entity @a[scores={accel=2,number=4}] rotated as @e[name=vessel,limit=1,scores={number=4}] run tp @s ^ ^ ^0.005
execute as @e[name=accelMk,tag=4] at @s if entity @a[scores={accel=3,number=4}] rotated as @e[name=vessel,limit=1,scores={number=4}] run tp @s ^ ^ ^0.01
execute as @e[name=accelMk,tag=4] at @s if entity @a[scores={accel=-1,number=4}] rotated as @e[name=vessel,limit=1,scores={number=4}] run tp @s ^ ^ ^0.001
execute as @e[name=accelMk,tag=4] at @s if entity @a[scores={accel=-2,number=4}] rotated as @e[name=vessel,limit=1,scores={number=4}] run tp @s ^ ^ ^0.0025

execute as @e[name=accelMk,tag=5] at @s if entity @a[scores={accel=1,number=5}] rotated as @e[name=vessel,limit=1,scores={number=5}] run tp @s ^ ^ ^0.002
execute as @e[name=accelMk,tag=5] at @s if entity @a[scores={accel=2,number=5}] rotated as @e[name=vessel,limit=1,scores={number=5}] run tp @s ^ ^ ^0.005
execute as @e[name=accelMk,tag=5] at @s if entity @a[scores={accel=3,number=5}] rotated as @e[name=vessel,limit=1,scores={number=5}] run tp @s ^ ^ ^0.01
execute as @e[name=accelMk,tag=5] at @s if entity @a[scores={accel=-1,number=5}] rotated as @e[name=vessel,limit=1,scores={number=5}] run tp @s ^ ^ ^0.001
execute as @e[name=accelMk,tag=5] at @s if entity @a[scores={accel=-2,number=5}] rotated as @e[name=vessel,limit=1,scores={number=5}] run tp @s ^ ^ ^0.0025

execute as @e[name=accelMk,tag=-1] at @s if entity @a[scores={accel=1,number=-1}] rotated as @e[name=vessel,limit=1,scores={number=-1}] run tp @s ^ ^ ^0.002
execute as @e[name=accelMk,tag=-1] at @s if entity @a[scores={accel=2,number=-1}] rotated as @e[name=vessel,limit=1,scores={number=-1}] run tp @s ^ ^ ^0.005
execute as @e[name=accelMk,tag=-1] at @s if entity @a[scores={accel=3,number=-1}] rotated as @e[name=vessel,limit=1,scores={number=-1}] run tp @s ^ ^ ^0.01
execute as @e[name=accelMk,tag=-1] at @s if entity @a[scores={accel=-1,number=-1}] rotated as @e[name=vessel,limit=1,scores={number=-1}] run tp @s ^ ^ ^0.001
execute as @e[name=accelMk,tag=-1] at @s if entity @a[scores={accel=-2,number=-1}] rotated as @e[name=vessel,limit=1,scores={number=-1}] run tp @s ^ ^ ^0.0025

execute as @e[name=accelMk,tag=-2] at @s if entity @a[scores={accel=1,number=-2}] rotated as @e[name=vessel,limit=1,scores={number=-2}] run tp @s ^ ^ ^0.002
execute as @e[name=accelMk,tag=-2] at @s if entity @a[scores={accel=2,number=-2}] rotated as @e[name=vessel,limit=1,scores={number=-2}] run tp @s ^ ^ ^0.005
execute as @e[name=accelMk,tag=-2] at @s if entity @a[scores={accel=3,number=-2}] rotated as @e[name=vessel,limit=1,scores={number=-2}] run tp @s ^ ^ ^0.01
execute as @e[name=accelMk,tag=-2] at @s if entity @a[scores={accel=-1,number=-2}] rotated as @e[name=vessel,limit=1,scores={number=-2}] run tp @s ^ ^ ^0.001
execute as @e[name=accelMk,tag=-2] at @s if entity @a[scores={accel=-2,number=-2}] rotated as @e[name=vessel,limit=1,scores={number=-2}] run tp @s ^ ^ ^0.0025

execute as @e[name=accelMk,tag=-3] at @s if entity @a[scores={accel=1,number=-3}] rotated as @e[name=vessel,limit=1,scores={number=-3}] run tp @s ^ ^ ^0.002
execute as @e[name=accelMk,tag=-3] at @s if entity @a[scores={accel=2,number=-3}] rotated as @e[name=vessel,limit=1,scores={number=-3}] run tp @s ^ ^ ^0.005
execute as @e[name=accelMk,tag=-3] at @s if entity @a[scores={accel=3,number=-3}] rotated as @e[name=vessel,limit=1,scores={number=-3}] run tp @s ^ ^ ^0.01
execute as @e[name=accelMk,tag=-3] at @s if entity @a[scores={accel=-1,number=-3}] rotated as @e[name=vessel,limit=1,scores={number=-3}] run tp @s ^ ^ ^0.001
execute as @e[name=accelMk,tag=-3] at @s if entity @a[scores={accel=-2,number=-3}] rotated as @e[name=vessel,limit=1,scores={number=-3}] run tp @s ^ ^ ^0.0025

execute as @e[name=accelMk,tag=-4] at @s if entity @a[scores={accel=1,number=-4}] rotated as @e[name=vessel,limit=1,scores={number=-4}] run tp @s ^ ^ ^0.002
execute as @e[name=accelMk,tag=-4] at @s if entity @a[scores={accel=2,number=-4}] rotated as @e[name=vessel,limit=1,scores={number=-4}] run tp @s ^ ^ ^0.005
execute as @e[name=accelMk,tag=-4] at @s if entity @a[scores={accel=3,number=-4}] rotated as @e[name=vessel,limit=1,scores={number=-4}] run tp @s ^ ^ ^0.01
execute as @e[name=accelMk,tag=-4] at @s if entity @a[scores={accel=-1,number=-4}] rotated as @e[name=vessel,limit=1,scores={number=-4}] run tp @s ^ ^ ^0.001
execute as @e[name=accelMk,tag=-4] at @s if entity @a[scores={accel=-2,number=-4}] rotated as @e[name=vessel,limit=1,scores={number=-4}] run tp @s ^ ^ ^0.0025

execute as @e[name=accelMk,tag=-5] at @s if entity @a[scores={accel=1,number=-5}] rotated as @e[name=vessel,limit=1,scores={number=-5}] run tp @s ^ ^ ^0.002
execute as @e[name=accelMk,tag=-5] at @s if entity @a[scores={accel=2,number=-5}] rotated as @e[name=vessel,limit=1,scores={number=-5}] run tp @s ^ ^ ^0.005
execute as @e[name=accelMk,tag=-5] at @s if entity @a[scores={accel=3,number=-5}] rotated as @e[name=vessel,limit=1,scores={number=-5}] run tp @s ^ ^ ^0.01
execute as @e[name=accelMk,tag=-5] at @s if entity @a[scores={accel=-1,number=-5}] rotated as @e[name=vessel,limit=1,scores={number=-5}] run tp @s ^ ^ ^0.001
execute as @e[name=accelMk,tag=-5] at @s if entity @a[scores={accel=-2,number=-5}] rotated as @e[name=vessel,limit=1,scores={number=-5}] run tp @s ^ ^ ^0.0025


# 分数作为中介
execute as @e[name=vesselM,scores={number=1}] store result score @s MotionXT run data get entity @e[name=accelMk,tag=1,limit=1] Pos[0] 20000000
execute as @e[name=vesselM,scores={number=1}] store result score @s MotionYT run data get entity @e[name=accelMk,tag=1,limit=1] Pos[1] 20000000
execute as @e[name=vesselM,scores={number=1}] store result score @s MotionZT run data get entity @e[name=accelMk,tag=1,limit=1] Pos[2] 20000000

execute as @e[name=vesselM,scores={number=2}] store result score @s MotionXT run data get entity @e[name=accelMk,tag=2,limit=1] Pos[0] 20000000
execute as @e[name=vesselM,scores={number=2}] store result score @s MotionYT run data get entity @e[name=accelMk,tag=2,limit=1] Pos[1] 20000000
execute as @e[name=vesselM,scores={number=2}] store result score @s MotionZT run data get entity @e[name=accelMk,tag=2,limit=1] Pos[2] 20000000

execute as @e[name=vesselM,scores={number=3}] store result score @s MotionXT run data get entity @e[name=accelMk,tag=3,limit=1] Pos[0] 20000000
execute as @e[name=vesselM,scores={number=3}] store result score @s MotionYT run data get entity @e[name=accelMk,tag=3,limit=1] Pos[1] 20000000
execute as @e[name=vesselM,scores={number=3}] store result score @s MotionZT run data get entity @e[name=accelMk,tag=3,limit=1] Pos[2] 20000000

execute as @e[name=vesselM,scores={number=4}] store result score @s MotionXT run data get entity @e[name=accelMk,tag=4,limit=1] Pos[0] 20000000
execute as @e[name=vesselM,scores={number=4}] store result score @s MotionYT run data get entity @e[name=accelMk,tag=4,limit=1] Pos[1] 20000000
execute as @e[name=vesselM,scores={number=4}] store result score @s MotionZT run data get entity @e[name=accelMk,tag=4,limit=1] Pos[2] 20000000

execute as @e[name=vesselM,scores={number=5}] store result score @s MotionXT run data get entity @e[name=accelMk,tag=5,limit=1] Pos[0] 20000000
execute as @e[name=vesselM,scores={number=5}] store result score @s MotionYT run data get entity @e[name=accelMk,tag=5,limit=1] Pos[1] 20000000
execute as @e[name=vesselM,scores={number=5}] store result score @s MotionZT run data get entity @e[name=accelMk,tag=5,limit=1] Pos[2] 20000000

execute as @e[name=vesselM,scores={number=-1}] store result score @s MotionXT run data get entity @e[name=accelMk,tag=-1,limit=1] Pos[0] 20000000
execute as @e[name=vesselM,scores={number=-1}] store result score @s MotionYT run data get entity @e[name=accelMk,tag=-1,limit=1] Pos[1] 20000000
execute as @e[name=vesselM,scores={number=-1}] store result score @s MotionZT run data get entity @e[name=accelMk,tag=-1,limit=1] Pos[2] 20000000

execute as @e[name=vesselM,scores={number=-2}] store result score @s MotionXT run data get entity @e[name=accelMk,tag=-2,limit=1] Pos[0] 20000000
execute as @e[name=vesselM,scores={number=-2}] store result score @s MotionYT run data get entity @e[name=accelMk,tag=-2,limit=1] Pos[1] 20000000
execute as @e[name=vesselM,scores={number=-2}] store result score @s MotionZT run data get entity @e[name=accelMk,tag=-2,limit=1] Pos[2] 20000000

execute as @e[name=vesselM,scores={number=-3}] store result score @s MotionXT run data get entity @e[name=accelMk,tag=-3,limit=1] Pos[0] 20000000
execute as @e[name=vesselM,scores={number=-3}] store result score @s MotionYT run data get entity @e[name=accelMk,tag=-3,limit=1] Pos[1] 20000000
execute as @e[name=vesselM,scores={number=-3}] store result score @s MotionZT run data get entity @e[name=accelMk,tag=-3,limit=1] Pos[2] 20000000

execute as @e[name=vesselM,scores={number=-4}] store result score @s MotionXT run data get entity @e[name=accelMk,tag=-4,limit=1] Pos[0] 20000000
execute as @e[name=vesselM,scores={number=-4}] store result score @s MotionYT run data get entity @e[name=accelMk,tag=-4,limit=1] Pos[1] 20000000
execute as @e[name=vesselM,scores={number=-4}] store result score @s MotionZT run data get entity @e[name=accelMk,tag=-4,limit=1] Pos[2] 20000000

execute as @e[name=vesselM,scores={number=-5}] store result score @s MotionXT run data get entity @e[name=accelMk,tag=-5,limit=1] Pos[0] 20000000
execute as @e[name=vesselM,scores={number=-5}] store result score @s MotionYT run data get entity @e[name=accelMk,tag=-5,limit=1] Pos[1] 20000000
execute as @e[name=vesselM,scores={number=-5}] store result score @s MotionZT run data get entity @e[name=accelMk,tag=-5,limit=1] Pos[2] 20000000
	
# 加速
execute as @e[name=vesselM] if entity @p[scores={accel=1..}] run scoreboard players operation @s MotionX += @s MotionXT
execute as @e[name=vesselM] if entity @p[scores={accel=1..}] run scoreboard players operation @s MotionY += @s MotionYT
execute as @e[name=vesselM] if entity @p[scores={accel=1..}] run scoreboard players operation @s MotionZ += @s MotionZT
	
# 减速
execute as @e[name=vesselM] if entity @p[scores={accel=..-1}] run scoreboard players operation @s MotionX -= @s MotionXT
execute as @e[name=vesselM] if entity @p[scores={accel=..-1}] run scoreboard players operation @s MotionY -= @s MotionYT
execute as @e[name=vesselM] if entity @p[scores={accel=..-1}] run scoreboard players operation @s MotionZ -= @s MotionZT
	
	# 一档速度上限
	execute as @e[name=vesselM,scores={MotionX=700000..}] if entity @p[scores={accel=1}] run scoreboard players remove @s MotionX 40000
	execute as @e[name=vesselM,scores={MotionY=700000..}] if entity @p[scores={accel=1}] run scoreboard players remove @s MotionY 40000
	execute as @e[name=vesselM,scores={MotionZ=700000..}] if entity @p[scores={accel=1}] run scoreboard players remove @s MotionZ 40000
	execute as @e[name=vesselM,scores={MotionX=..-700000}] if entity @p[scores={accel=1}] run scoreboard players add @s MotionX 40000
	execute as @e[name=vesselM,scores={MotionY=..-700000}] if entity @p[scores={accel=1}] run scoreboard players add @s MotionY 40000
	execute as @e[name=vesselM,scores={MotionZ=..-700000}] if entity @p[scores={accel=1}] run scoreboard players add @s MotionZ 40000
	
	execute as @e[name=vesselM,scores={MotionX=500000..}] if entity @p[scores={accel=-1}] run scoreboard players remove @s MotionX 40000
	execute as @e[name=vesselM,scores={MotionY=500000..}] if entity @p[scores={accel=-1}] run scoreboard players remove @s MotionY 40000
	execute as @e[name=vesselM,scores={MotionZ=500000..}] if entity @p[scores={accel=-1}] run scoreboard players remove @s MotionZ 40000
	execute as @e[name=vesselM,scores={MotionX=..-500000}] if entity @p[scores={accel=-1}] run scoreboard players add @s MotionX 40000
	execute as @e[name=vesselM,scores={MotionY=..-500000}] if entity @p[scores={accel=-1}] run scoreboard players add @s MotionY 40000
	execute as @e[name=vesselM,scores={MotionZ=..-500000}] if entity @p[scores={accel=-1}] run scoreboard players add @s MotionZ 40000
	
	# 二档速度上限
	execute as @e[name=vesselM,scores={MotionX=3500000..}] if entity @p[scores={accel=2}] run scoreboard players remove @s MotionX 100000
	execute as @e[name=vesselM,scores={MotionY=3500000..}] if entity @p[scores={accel=2}] run scoreboard players remove @s MotionY 100000
	execute as @e[name=vesselM,scores={MotionZ=3500000..}] if entity @p[scores={accel=2}] run scoreboard players remove @s MotionZ 100000
	execute as @e[name=vesselM,scores={MotionX=..-3500000}] if entity @p[scores={accel=2}] run scoreboard players add @s MotionX 100000
	execute as @e[name=vesselM,scores={MotionY=..-3500000}] if entity @p[scores={accel=2}] run scoreboard players add @s MotionY 100000
	execute as @e[name=vesselM,scores={MotionZ=..-3500000}] if entity @p[scores={accel=2}] run scoreboard players add @s MotionZ 100000
	
	execute as @e[name=vesselM,scores={MotionX=2000000..}] if entity @p[scores={accel=-2}] run scoreboard players remove @s MotionX 100000
	execute as @e[name=vesselM,scores={MotionY=2000000..}] if entity @p[scores={accel=-2}] run scoreboard players remove @s MotionY 100000
	execute as @e[name=vesselM,scores={MotionZ=2000000..}] if entity @p[scores={accel=-2}] run scoreboard players remove @s MotionZ 100000
	execute as @e[name=vesselM,scores={MotionX=..-2000000}] if entity @p[scores={accel=-2}] run scoreboard players add @s MotionX 100000
	execute as @e[name=vesselM,scores={MotionY=..-2000000}] if entity @p[scores={accel=-2}] run scoreboard players add @s MotionY 100000
	execute as @e[name=vesselM,scores={MotionZ=..-2000000}] if entity @p[scores={accel=-2}] run scoreboard players add @s MotionZ 100000
	
	# 三档速度上限
	execute as @e[name=vesselM,scores={MotionX=8000000..}] if entity @p[scores={accel=3}] run scoreboard players remove @s MotionX 200000
	execute as @e[name=vesselM,scores={MotionY=8000000..}] if entity @p[scores={accel=3}] run scoreboard players remove @s MotionY 200000
	execute as @e[name=vesselM,scores={MotionZ=8000000..}] if entity @p[scores={accel=3}] run scoreboard players remove @s MotionZ 200000
	execute as @e[name=vesselM,scores={MotionX=..-8000000}] if entity @p[scores={accel=3}] run scoreboard players add @s MotionX 200000
	execute as @e[name=vesselM,scores={MotionY=..-8000000}] if entity @p[scores={accel=3}] run scoreboard players add @s MotionY 200000
	execute as @e[name=vesselM,scores={MotionZ=..-8000000}] if entity @p[scores={accel=3}] run scoreboard players add @s MotionZ 200000

# 分数反映到 Motion 上
execute as @e[name=vesselM] store result entity @s Motion[0] double 0.00000008 run scoreboard players get @s MotionX
execute as @e[name=vesselM] store result entity @s Motion[1] double 0.00000008 run scoreboard players get @s MotionY
execute as @e[name=vesselM] store result entity @s Motion[2] double 0.00000008 run scoreboard players get @s MotionZ