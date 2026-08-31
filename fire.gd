extends Node3D

@onready var firelight = $StaticBody3D/OmniLight3D

# Called when the node enters the scene tree for the first time.
func _ready():
	DialogDb.fireup.connect(_on_fire_increase)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Signal from the Timer node that is emitted at the end of every wait cycle.
func _on_timer_timeout():
	# Decrements fire level by one value.
	DialogDb.firelevel -= 4
	# Sets the Energy value in OmniLight3D to equal the fire level
	firelight.light_energy = DialogDb.firelevel
	# Limiter so that the light energy doesn't enter negative values
	if DialogDb.firelevel < 0:
		DialogDb.firelevel = 0

func _on_fire_increase():
	# Increments fire level by one value.
	DialogDb.firelevel += 4
	# Sets the Energy value in OmniLight3D to equal the fire level
	firelight.light_energy = DialogDb.firelevel
		# Limiter so that the light energy doesn't enter value above 12
	if DialogDb.firelevel > 12:
		DialogDb.firelevel = 12
