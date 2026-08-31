extends Node3D

@onready var firelight = $StaticBody3D/OmniLight3D

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.log_added.connect(_on_fire_increase)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


# Signal from the Timer node that is emitted at the end of every wait cycle.
func _on_timer_timeout():
	# Decrements fire level by 1
	Global.fire_level -= 1
	_fireUpdate(Global.fire_level)


# Increments fire_level by 1
func _on_fire_increase():
	Global.fire_level += 1
	$AudioStreamPlayer3D.play()
	_fireUpdate(Global.fire_level)


# Called whenever fire_level is increased or decreased
func _fireUpdate(param1):
	# Dead fire
	if param1 <= 0:
		firelight.light_energy = 0
		firelight.omni_range = 10
		# Limiter to keep fire_level >= 0
		Global.fire_level = 0
		
	# Weak fire
	elif param1 == 1:
		firelight.light_energy = 4
		firelight.omni_range = 10
		
	# Medium fire
	elif param1 == 2:
		firelight.light_energy = 8
		firelight.omni_range = 10
		
	# Strong fire
	elif param1 >= 3:
		firelight.light_energy = 12
		firelight.omni_range = 10
		# Limiter to keep fire_level <= 3
		Global.fire_level = 3
		
	print(" fire_level = ", Global.fire_level)
