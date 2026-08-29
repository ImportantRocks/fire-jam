extends Node

var currentAnim


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Starting the game with the first dialog
	get_tree().root.get_node("/root/Main//Dialog").add_child(DialogDb.dialog0)
	currentAnim = DialogDb.dialog0.get_node("AnimationPlayer")
	currentAnim.animation_finished.connect(dialog1)


func dialog1(_string) -> void:
	#disconnect from signal
	currentAnim.animation_finished.disconnect(dialog1)
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialog0)
	
	#add new dialog child
	get_tree().root.get_node("/root/Main//Dialog").add_child(DialogDb.dialog1)
