extends Node


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
	
	#camera controls here? 



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Starting the game with the first dialog
	get_tree().root.get_node("/root/Main//Dialog").add_child(DialogDb.dialog0)
	var Anim = DialogDb.dialog0.get_node("AnimationPlayer")
	Anim.animation_finished.connect(dialog1)
	
	
	#connecting the animation finished signal to the next function
	#DialogDb.dialog0._on_animation_finished.connect()
#yo

func dialog1(string) -> void:
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialog0)
	#add new dialog child
	get_tree().root.get_node("/root/Main//Dialog").add_child(DialogDb.dialog1)
