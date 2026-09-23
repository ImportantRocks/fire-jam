extends Node3D

@onready var firelight = $StaticBody3D/OmniLight3D
@onready var firesound = $FireCrackle
@onready var random_value: float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.log_added.connect(_on_fire_increase)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	firelight.light_energy = lerp(firelight.light_energy, random_value, 0.3)
	

func _on_fire_flicker_timer_timeout() -> void:
	if Global.fire_level == 1:
		random_value = randf_range(2, 6)
		
	elif Global.fire_level == 2:
		random_value = randf_range(6, 10)
		
	elif Global.fire_level == 3:
		random_value = randf_range(10, 14)


# Signal from the Timer node that is emitted at the end of every wait cycle.
func _on_timer_timeout():
	# Decrements fire level by 1
	Global.fire_level -= 1
	_fireUpdate(Global.fire_level)


# Increments fire_level by 1
func _on_fire_increase():
	Global.fire_level += 1
	_fireUpdate(Global.fire_level)
	$FireTimer.start()
	$LogCooldown.start()
	$FireWoosh.play(1.1)
	$LogSparks.emitting = true


# Called whenever fire_level is increased or decreased
func _fireUpdate(param1):
	# Dead fire
	if param1 <= 0:
		firelight.light_energy = 0
		firelight.omni_range = 0
		firesound.playing = false
		Global.fire_died.emit()
		# Limiter to keep fire_level >= 0
		Global.fire_level = 0
		
	# Weak fire
	elif param1 == 1:
		firelight.light_energy = 4
		firelight.omni_range = 6
		firesound.volume_db = -15
		
	# Medium fire
	elif param1 == 2:
		firelight.light_energy = 8
		firelight.omni_range = 8
		firesound.volume_db = -10
		
	# Strong fire
	elif param1 >= 3:
		firelight.light_energy = 12
		firelight.omni_range = 10
		firesound.volume_db = -5
		# Limiter to keep fire_level <= 3
		Global.fire_level = 3
		
	print(" fire_level = ", Global.fire_level)
