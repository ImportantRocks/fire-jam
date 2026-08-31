extends CollisionObject3D

class_name Interactable

signal interacted(body)

@export var prompt_message = 'Interact'
@export var prompt_input = 'interact'

func interact(body):
	print(body.name, " interacted with ", name)
	interacted.emit(body)
	DialogDb.fireup.emit()
