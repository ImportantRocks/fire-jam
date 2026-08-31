extends Node3D

@onready var firelight = $StaticBody3D/OmniLight3D

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.fireup.connect(_on_fire_increase)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

# Signal from the Timer node that is emitted at the end of every wait cycle.
func _on_timer_timeout():
	# Decrements fire level by 1
	Global.firelevel -= 1
	_fireUpdate(Global.firelevel)

# Increments fire level by 1
func _on_fire_increase():
	$AudioStreamPlayer3D.play()
	Global.firelevel += 1
	_fireUpdate(Global.firelevel)

func _fireUpdate(param1):
# Dead fire
	if param1 <= 0:
		firelight.light_energy = 0
		firelight.omni_range = 10
		# Limiter to keep firelevel >= 0
		Global.firelevel = 0
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
		# Limiter to keep firelevel <= 3
		Global.firelevel = 3
		
	print(" firelevel = ", Global.firelevel)
