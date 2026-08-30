extends Node

var currentAnim
var currentTimer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	dialog0()

#Testing Section

func dialog0():
	#Starting the game with the first dialog
	get_tree().root.get_node("/root/Main//Dialog").add_child(DialogDb.dialog0)
	
	#set animation and timer ref as variables
	currentAnim = DialogDb.dialog0.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialog0.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialog0TimerStart)

func dialog0TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialog0TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialog1)



func dialog1():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialog1)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialog0)
	#add new dialog child
	get_tree().root.get_node("/root/Main//Dialog").add_child(DialogDb.dialog1)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialog1.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialog1.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialog1TimerStart)
	
func dialog1TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialog1TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialog2)



func dialog2():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialog2)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialog1)
	#add new dialog child
	get_tree().root.get_node("/root/Main//Dialog").add_child(DialogDb.dialog2)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialog1.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialog1.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialog2TimerStart)

func dialog2TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialog2TimerStart)
	#connect next dialog to timer timeout signal
	#currentTimer.timeout.connect(dialog2)
	
	
	
	
	
	
