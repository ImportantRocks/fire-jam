extends CollisionObject3D

class_name Interactable

signal interacted(body)

@export var prompt_message = 'Interact'
@export var prompt_input = 'interact'

	
func interact(body):
	print(body.name, " interacted with ", name)
	
	if Global.logs_remaining >= 1 and Global.fire_level >= 1 and $/root/Main/Fire/LogCooldown.is_stopped():
		interacted.emit(body)
		Global.log_added.emit()
		Global.logs_remaining -= 1
		print(" Logs remaining = ", Global.logs_remaining)
		if Global.logs_remaining == 0:
			Global.logs_depleted.emit()
			
	else:
		print(" ...but it failed")
