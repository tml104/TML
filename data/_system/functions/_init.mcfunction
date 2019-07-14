# consts
scoreboard objectives add Const dummy
scoreboard players set -1 Const -1
scoreboard players set 2 Const 2
scoreboard players set 8 Const 8
scoreboard players set 10 Const 10

# obj
	# general
	scoreboard objectives add Shift minecraft.custom:minecraft.sneak_time
	
	# system
	scoreboard objectives add number dummy
	
	# movement
	scoreboard objectives add accel dummy
	scoreboard objectives add MotionX dummy
	scoreboard objectives add MotionY dummy
	scoreboard objectives add MotionZ dummy
	scoreboard objectives add MotionXT dummy
	scoreboard objectives add MotionYT dummy
	scoreboard objectives add MotionZT dummy
	scoreboard objectives add brakeTimer dummy
	scoreboard objectives add RotationX dummy
	scoreboard objectives add RotationY dummy
	scoreboard objectives add RotationXT dummy
	scoreboard objectives add RotationYT dummy
	
# Mk
	# movement
	summon area_effect_cloud 0.0 0.0 0.0 {Duration:2100000000,CustomName:"\"accelMk\"",Tags:["1"]}
	summon area_effect_cloud 0.0 0.0 0.0 {Duration:2100000000,CustomName:"\"accelMk\"",Tags:["2"]}
	summon area_effect_cloud 0.0 0.0 0.0 {Duration:2100000000,CustomName:"\"accelMk\"",Tags:["3"]}
	summon area_effect_cloud 0.0 0.0 0.0 {Duration:2100000000,CustomName:"\"accelMk\"",Tags:["4"]}
	summon area_effect_cloud 0.0 0.0 0.0 {Duration:2100000000,CustomName:"\"accelMk\"",Tags:["5"]}
	summon area_effect_cloud 0.0 0.0 0.0 {Duration:2100000000,CustomName:"\"accelMk\"",Tags:["-1"]}
	summon area_effect_cloud 0.0 0.0 0.0 {Duration:2100000000,CustomName:"\"accelMk\"",Tags:["-2"]}
	summon area_effect_cloud 0.0 0.0 0.0 {Duration:2100000000,CustomName:"\"accelMk\"",Tags:["-3"]}
	summon area_effect_cloud 0.0 0.0 0.0 {Duration:2100000000,CustomName:"\"accelMk\"",Tags:["-4"]}
	summon area_effect_cloud 0.0 0.0 0.0 {Duration:2100000000,CustomName:"\"accelMk\"",Tags:["-5"]}