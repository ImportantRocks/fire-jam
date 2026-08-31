extends Node

var currentAnim
var currentTimer
var currentAudioPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#dialogGirlTWarmerC0()
	#playDialog("GirlTWarmerC1", "GirlTWarmerC0")
	
	dialogMainFireSceneC0()



#messing with better dialog script
func playDialog(dialogC:String, prevDialogC:String):
	
	var currentDialogC = "dialog" + dialogC
	var previousDialogC = "dialog" + prevDialogC
	
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(currentDialogC)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.previousDialogC)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.currentDialogC)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.currentDialogC.get_node("AnimationPlayer")
	currentTimer = DialogDb.currentDialogC.get_node("Timer")
	currentAudioPlayer = DialogDb.currentDialogC.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC2TimerStart)







#MainFireScene section ---



func dialogMainFireSceneC0():
	#Starting the game with the first dialog
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC0)
	
	#set animation and timer ref as variables
	currentAnim = DialogDb.dialogMainFireSceneC0.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC0.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC0.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC0TimerStart)

func dialogMainFireSceneC0TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC0TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC1)




func dialogMainFireSceneC1():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC1)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC0)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC1)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC1.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC1.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC1.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC1TimerStart)
	
func dialogMainFireSceneC1TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC1TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC2)



func dialogMainFireSceneC2():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC2)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC1)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC2)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC2.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC2.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC2.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC2TimerStart)
	
func dialogMainFireSceneC2TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC2TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC3)

func dialogMainFireSceneC3():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC3)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC2)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC3)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC3.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC3.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC3.get_node("AudioStreamPlayer")

	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC3TimerStart)
	
func dialogMainFireSceneC3TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC3TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC4)

func dialogMainFireSceneC4():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC4)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC3)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC4)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC4.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC4.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC4.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC4TimerStart)
	
func dialogMainFireSceneC4TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC4TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC5)

func dialogMainFireSceneC5():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC5)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC4)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC5)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC5.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC5.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC5.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC5TimerStart)
	
func dialogMainFireSceneC5TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC5TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC6)

func dialogMainFireSceneC6():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC6)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC5)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC6)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC6.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC6.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC6.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC6TimerStart)
	
func dialogMainFireSceneC6TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC6TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC7)

func dialogMainFireSceneC7():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC7)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC6)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC7)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC7.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC7.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC7.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC7TimerStart)
	
func dialogMainFireSceneC7TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC7TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC8)

func dialogMainFireSceneC8():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC8)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC7)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC8)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC8.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC8.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC8.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC8TimerStart)
	
func dialogMainFireSceneC8TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC8TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC9)

func dialogMainFireSceneC9():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC9)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC8)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC9)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC9.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC9.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC9.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC9TimerStart)
	
func dialogMainFireSceneC9TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC9TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC10)

func dialogMainFireSceneC10():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC10)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC9)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC10)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC10.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC10.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC10.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC10TimerStart)
	
func dialogMainFireSceneC10TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC10TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC11)


func dialogMainFireSceneC11():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC11)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC10)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC11)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC11.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC11.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC11.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC11TimerStart)
	
func dialogMainFireSceneC11TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC11TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC12)

func dialogMainFireSceneC12():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC12)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC11)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC12)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC12.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC12.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC12.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC12TimerStart)
	
func dialogMainFireSceneC12TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC12TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC13)

func dialogMainFireSceneC13():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC13)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC12)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC13)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC13.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC13.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC13.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC13TimerStart)
	
func dialogMainFireSceneC13TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC13TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC14)

func dialogMainFireSceneC14():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC14)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC13)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC14)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC14.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC14.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC14.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC14TimerStart)
	
func dialogMainFireSceneC14TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC14TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC15)

func dialogMainFireSceneC15():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC15)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC14)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC15)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC15.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC15.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC15.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC15TimerStart)
	
func dialogMainFireSceneC15TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC15TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC16)

func dialogMainFireSceneC16():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC16)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC15)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC16)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC16.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC16.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC16.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC16TimerStart)
	
func dialogMainFireSceneC16TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC16TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC17)

func dialogMainFireSceneC17():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC17)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC16)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC17)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC17.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC17.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC17.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC17TimerStart)
	
func dialogMainFireSceneC17TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC17TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC18)

func dialogMainFireSceneC18():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC18)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC17)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC18)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC18.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC18.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC18.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC18TimerStart)
	
func dialogMainFireSceneC18TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC18TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC19)

func dialogMainFireSceneC19():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC19)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC18)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC19)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC19.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC19.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC19.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC19TimerStart)
	
func dialogMainFireSceneC19TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC19TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC20)

func dialogMainFireSceneC20():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC20)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC19)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC20)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC20.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC20.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC20.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC20TimerStart)
	
func dialogMainFireSceneC20TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC20TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC21)

func dialogMainFireSceneC21():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC21)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC20)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC21)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC21.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC21.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC21.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC21TimerStart)
	
func dialogMainFireSceneC21TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC21TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC22)

func dialogMainFireSceneC22():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC22)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC21)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC22)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC22.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC22.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC22.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC22TimerStart)
	
func dialogMainFireSceneC22TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC22TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC23)

func dialogMainFireSceneC23():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC23)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC22)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC23)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC23.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC23.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC23.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC23TimerStart)
	
func dialogMainFireSceneC23TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC23TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC24)

func dialogMainFireSceneC24():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC24)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC23)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC24)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC24.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC24.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC24.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC24TimerStart)
	
func dialogMainFireSceneC24TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC24TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC25)

func dialogMainFireSceneC25():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC25)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC24)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC25)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC25.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC25.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC25.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC25TimerStart)
	
func dialogMainFireSceneC25TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC25TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC26)

func dialogMainFireSceneC26():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC26)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC25)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC26)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC26.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC26.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC26.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC26TimerStart)
	
func dialogMainFireSceneC26TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC26TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC27)

func dialogMainFireSceneC27():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC27)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC26)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC27)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC27.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC27.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC27.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC27TimerStart)
	
func dialogMainFireSceneC27TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC27TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC28)

func dialogMainFireSceneC28():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC28)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC27)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC28)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC28.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC28.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC28.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC28TimerStart)
	
func dialogMainFireSceneC28TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC28TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC29)

func dialogMainFireSceneC29():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC29)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC28)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC29)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC29.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC29.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC29.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC29TimerStart)
	
func dialogMainFireSceneC29TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC29TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC30)

func dialogMainFireSceneC30():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC30)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC29)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC30)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC30.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC30.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC30.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC30TimerStart)
	
func dialogMainFireSceneC30TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC30TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC31)

func dialogMainFireSceneC31():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC31)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC30)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC31)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC31.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC31.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC31.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC31TimerStart)
	
func dialogMainFireSceneC31TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC31TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC32)

func dialogMainFireSceneC32():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC32)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC31)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC32)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC32.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC32.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC32.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC32TimerStart)
	
func dialogMainFireSceneC32TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC32TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC33)

func dialogMainFireSceneC33():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC33)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC32)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC33)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC33.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC33.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC33.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC33TimerStart)
	
func dialogMainFireSceneC33TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC33TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC34)

func dialogMainFireSceneC34():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC34)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC33)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC34)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC34.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC34.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC34.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC34TimerStart)
	
func dialogMainFireSceneC34TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC34TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC35)

func dialogMainFireSceneC35():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC35)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC34)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC35)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC35.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC35.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC35.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC35TimerStart)
	
func dialogMainFireSceneC35TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC35TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC36)

func dialogMainFireSceneC36():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC36)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC35)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC36)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC36.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC36.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC36.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC36TimerStart)
	
func dialogMainFireSceneC36TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC36TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC37)

func dialogMainFireSceneC37():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC37)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC36)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC37)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC37.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC37.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC37.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC37TimerStart)
	
func dialogMainFireSceneC37TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC37TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC38)

func dialogMainFireSceneC38():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC38)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC37)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC38)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC38.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC38.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC38.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC38TimerStart)
	
func dialogMainFireSceneC38TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC38TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC39)

func dialogMainFireSceneC39():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC39)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC38)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC39)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC39.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC39.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC39.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC39TimerStart)
	
func dialogMainFireSceneC39TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC39TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC40)

func dialogMainFireSceneC40():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC40)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC39)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC40)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC40.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC40.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC40.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC40TimerStart)
	
func dialogMainFireSceneC40TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC40TimerStart)
	#connect next dialog to timer timeout signal
	currentTimer.timeout.connect(dialogMainFireSceneC41)

func dialogMainFireSceneC41():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogMainFireSceneC41)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC40)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogMainFireSceneC41)
	
	#set animation ref as currentAnim
	currentAnim = DialogDb.dialogMainFireSceneC41.get_node("AnimationPlayer")
	currentTimer = DialogDb.dialogMainFireSceneC41.get_node("Timer")
	currentAudioPlayer = DialogDb.dialogMainFireSceneC41.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogMainFireSceneC41TimerStart)
	
func dialogMainFireSceneC41TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogMainFireSceneC41TimerStart)
	#connect next dialog to timer timeout signal
	
	#This will jump to the next scene
	currentTimer.timeout.connect(dialogGirlTWarmerC0)















	#GirlTWarmer section ---
func dialogGirlTWarmerC0():
	#disconnect from previous timer signal
	currentTimer.timeout.disconnect(dialogGirlTWarmerC0)
	
	#remove previous dialog child
	get_tree().root.get_node("/root/Main/Dialog").remove_child(DialogDb.dialogMainFireSceneC41)
	#add new dialog child
	get_tree().root.get_node("/root/Main/Dialog").add_child(DialogDb.dialogGirlTWarmerC0)
	
	#set animation ref as currentAnim
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC2.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC2TimerStart)
	
func dialogGirlTWarmerC2TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC3.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC3TimerStart)
	
func dialogGirlTWarmerC3TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC4.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC4TimerStart)
	
func dialogGirlTWarmerC4TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC5.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC5TimerStart)
	
func dialogGirlTWarmerC5TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC6.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC6TimerStart)
	
func dialogGirlTWarmerC6TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC7.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC7TimerStart)
	
func dialogGirlTWarmerC7TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC8.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC8TimerStart)
	
func dialogGirlTWarmerC8TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC9.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC9TimerStart)
	
func dialogGirlTWarmerC9TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC10.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC10TimerStart)
	
func dialogGirlTWarmerC10TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC11.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC11TimerStart)
	
func dialogGirlTWarmerC11TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC12.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC12TimerStart)
	
func dialogGirlTWarmerC12TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC13.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC13TimerStart)
	
func dialogGirlTWarmerC13TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC14.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC14TimerStart)
	
func dialogGirlTWarmerC14TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC15.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC15TimerStart)
	
func dialogGirlTWarmerC15TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC16.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC16TimerStart)
	
func dialogGirlTWarmerC16TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC17.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC17TimerStart)
	
func dialogGirlTWarmerC17TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC18.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC18TimerStart)
	
func dialogGirlTWarmerC18TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC19.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC19TimerStart)
	
func dialogGirlTWarmerC19TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC20.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC20TimerStart)
	
func dialogGirlTWarmerC20TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC21.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC21TimerStart)
	
func dialogGirlTWarmerC21TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC22.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC22TimerStart)
	
func dialogGirlTWarmerC22TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC23.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC23TimerStart)
	
func dialogGirlTWarmerC23TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
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
	currentAudioPlayer = DialogDb.dialogGirlTWarmerC24.get_node("AudioStreamPlayer")
	
	#connect end animation signal to start timer
	currentAnim.animation_finished.connect(dialogGirlTWarmerC24TimerStart)
	
func dialogGirlTWarmerC24TimerStart(_string):
	currentTimer.start()
	currentAudioPlayer.stop()
	#disconnect signal from animation to timer
	currentAnim.animation_finished.disconnect(dialogGirlTWarmerC24TimerStart)
	#connect next dialog to timer timeout signal
	#currentTimer.timeout.connect(dialogGirlTWarmerC24)
	
	
	
