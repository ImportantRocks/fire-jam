extends Node

var currentAnim
var currentTimer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#Starting the game with the first dialog
	get_tree().root.get_node("/root/Main//Dialog").add_child(DialogDb.dialog0)
	#set animation and timer ref as variables
	currentAnim = DialogDb.dialog0.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialog0.get_node("Timer")
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialog1)
	
	#connect next dialog to timer timeout signal
	#timer.timeout.connect(dialog1)

func dialog1(_string):
	#disconnect from signal
	currentAnim.animation_finished.disconnect(dialog1)
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialog0)
	#add new dialog child
	get_tree().root.get_node("/root/Main//Dialog").add_child(DialogDb.dialog1)
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialog1.get_node("AnimationPlayer")
	#connect to next dialog
	currentAnim.animation_finished.connect(dialog2)



func dialog2(_string):
	#disconnect from signal
	currentAnim.animation_finished.disconnect(dialog2)
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialog1)
	#add new dialog child
	get_tree().root.get_node("/root/Main//Dialog").add_child(DialogDb.dialog2)
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialog1.get_node("AnimationPlayer")
	#connect to next dialog
	#currentAnim.animation_finished.connect(dialog2)
	
	
	
	
	
	
