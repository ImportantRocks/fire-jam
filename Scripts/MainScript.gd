extends Node

var currentAnim
var currentTimer
var currentAudioPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	dialogGirlTWarmerC0()


	
	#GirlTWarmer section ---
func dialogGirlTWarmerC0():
	#Starting the game with the first dialog
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC0)
	
	#set animation and timer ref as variables
	currentAnim = DialogDb.dialogGirlTWarmerC0.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC0.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC0.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC0TimerStart)

func dialogGirlTWarmerC0TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC1.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC1TimerStart)
	
func dialogGirlTWarmerC1TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentTimer.timeout.connect(dialogGirlTWarmerC11)
	
	
	
func dialogGirlTWarmerC11():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC11)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC10)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC11)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC11.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC11.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC11TimerStart)
	
func dialogGirlTWarmerC11TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC11TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC12)
	
	
	
func dialogGirlTWarmerC12():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC12)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC11)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC12)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC12.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC12.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC12TimerStart)
	
func dialogGirlTWarmerC12TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC12TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC13)
	
	
	
func dialogGirlTWarmerC13():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC13)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC12)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC13)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC13.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC13.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC13TimerStart)
	
func dialogGirlTWarmerC13TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC13TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC14)
	
	
	
func dialogGirlTWarmerC14():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC14)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC13)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC14)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC14.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC14.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC14TimerStart)
	
func dialogGirlTWarmerC14TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC14TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC15)
	
	
	
func dialogGirlTWarmerC15():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC15)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC14)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC15)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC15.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC15.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC15TimerStart)
	
func dialogGirlTWarmerC15TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC15TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC16)
	
	
	
func dialogGirlTWarmerC16():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC16)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC15)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC16)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC16.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC16.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC16TimerStart)
	
func dialogGirlTWarmerC16TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC16TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC17)
	
	
	
	
func dialogGirlTWarmerC17():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC17)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC16)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC17)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC17.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC17.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC17TimerStart)
	
func dialogGirlTWarmerC17TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC17TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC18)
	
	
	
func dialogGirlTWarmerC18():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC18)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC17)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC18)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC18.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC18.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC18TimerStart)
	
func dialogGirlTWarmerC18TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC18TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC19)
	
	
	
func dialogGirlTWarmerC19():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC19)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC18)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC19)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC19.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC19.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC19TimerStart)
	
func dialogGirlTWarmerC19TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC19TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC20)
	
	
	
func dialogGirlTWarmerC20():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC20)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC19)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC20)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC20.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC20.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC20TimerStart)
	
func dialogGirlTWarmerC20TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC20TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC21)
	
	
	
func dialogGirlTWarmerC21():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC21)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC20)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC21)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC21.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC21.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC21TimerStart)
	
func dialogGirlTWarmerC21TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC21TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC22)
	
	
	
func dialogGirlTWarmerC22():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC22)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC21)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC22)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC22.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC22.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC22TimerStart)
	
func dialogGirlTWarmerC22TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC22TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC23)
	
	
	
func dialogGirlTWarmerC23():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC23)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC22)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC23)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC23.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC23.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC23TimerStart)
	
func dialogGirlTWarmerC23TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC23TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogGirlTWarmerC24)
	
	
	
func dialogGirlTWarmerC24():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC24)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogGirlTWarmerC23)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC24)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogGirlTWarmerC24.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogGirlTWarmerC24.get_node("Timer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC24TimerStart)
	
func dialogGirlTWarmerC24TimerStart(_string):
	currentTimer.start()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC24TimerStart)
	#connect next dialog to timer timeout signal
	#currentTimer.timeout.connect(dialogGirlTWarmerC24)
	
	
	
	
	
