extends Node3D

# Determines the strength of the fire. Value moves in increments of 4.
# 0 = The fire is dead, 4 = Weak fire, 8 = Medium fire, 12 = Strong fire
var fireLevel = 8

@onready var firelight = $StaticBody3D/OmniLight3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Signal from the Timer node that is emitted at the end of every wait cycle.
func _on_timer_timeout():
	# Decrements fire level by one value.
	fireLevel -= 4
	# Sets the Energy value in OmniLight3D to equal the fire level
	firelight.light_energy = fireLevel
	# Limiter so that the light energy doesn't enter negative values
	if fireLevel < 0:
		fireLevel = 0
	# Limiter so that the light energy doesn't enter value above 12
	if fireLevel > 12:
		fireLevel = 12
