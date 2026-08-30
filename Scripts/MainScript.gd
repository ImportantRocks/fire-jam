extends Node

var currentAnim
var currentTimer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	dialogGirlTWarmerC0()



#Testing Section ---

func dialog0():
	#Starting the game with the first dialog
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialog0)
	
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
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialog2)
	
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
	
	
	
	
	#GirlTWarmer section ---
func dialogGirlTWarmerC0():
	#Starting the game with the first dialog
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC0)
	
	#set animation and timer ref as variables
	currentAnim = DialogDb.dialogGirlTWarmerC0.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC0.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC0TimerStart)

func dialogGirlTWarmerC0TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC0TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC1)
	
	
	
func dialogGirlTWarmerC1():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC1)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC0)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC1)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC1.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC1.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC1TimerStart)
	
func dialogGirlTWarmerC1TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC1TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC2)
	
	
func dialogGirlTWarmerC2():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC2)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC1)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC2)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC2.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC2.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC2TimerStart)
	
func dialogGirlTWarmerC2TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC2TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC3)
	
	
func dialogGirlTWarmerC3():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC3)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC2)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC3)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC3.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC3.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC3TimerStart)
	
func dialogGirlTWarmerC3TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC3TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC4)
	
	
	
func dialogGirlTWarmerC4():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC4)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC3)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC4)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC4.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC4.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC4TimerStart)
	
func dialogGirlTWarmerC4TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC4TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC5)
	
	
func dialogGirlTWarmerC5():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC5)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC4)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC5)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC5.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC5.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC5TimerStart)
	
func dialogGirlTWarmerC5TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC5TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC6)
	
	
func dialogGirlTWarmerC6():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC6)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC5)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC6)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC6.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC6.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC6TimerStart)
	
func dialogGirlTWarmerC6TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC6TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC7)
	
	
	
func dialogGirlTWarmerC7():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC7)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC6)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC7)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC7.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC7.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC7TimerStart)
	
func dialogGirlTWarmerC7TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC7TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC8)
	
	
	
func dialogGirlTWarmerC8():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC8)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC7)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC8)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC8.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC8.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC8TimerStart)
	
func dialogGirlTWarmerC8TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC8TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC9)
	
	
	
func dialogGirlTWarmerC9():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC9)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC8)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC9)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC9.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC9.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC9TimerStart)
	
func dialogGirlTWarmerC9TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC9TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC10)
	
	
	
func dialogGirlTWarmerC10():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC10)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC9)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC10)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC10.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC10.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC10TimerStart)
	
func dialogGirlTWarmerC10TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC10TimerStart)
	#connect next dialog to timer timeout signal
	#currentTimer.timeout.connect(dialogGirlTWarmerC11)
	
	
	
	
	
	
	
