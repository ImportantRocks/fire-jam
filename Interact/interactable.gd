extends CollisionObject3D

class_name Interactable

signal interacted(body)

@export var prompt_message = 'Interact'
@export var prompt_input = 'interact'

	
func interact(body):
	print(body.name, " interacted with ", name)
	
	if Global.logs_remaining >= 1:
		interacted.emit(body)
		Global.log_added.emit()
		Global.logs_remaining -= 1
		print(" Logs remaining = ", Global.logs_remaining)
			
	else:
		Global.logs_remaining = 0
		print(" ...but there was nothing left to burn ")
			
	
