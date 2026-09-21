extends Node

var currentTrack

var currentDialogPosition = 0
var currentDialogScene
var prevDialogScene

var currentAnim
var currentTimer
var currentAudioPlayer

@onready var backgroundMusicPlayer = $BackgroundMusicPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	currentTrack = "mainFireScene"
	dialogTrackSwitcher(currentTrack)
	backgroundMusicPlayer.volume_linear = Global.masterVolume


func updateMasterVolume():
	backgroundMusicPlayer.volume_linear = Global.masterVolume
	
func updateMusicVolume():
	backgroundMusicPlayer.volume_linear = Global.musicVolumeMix
	
func updateSFXVolume():
	backgroundMusicPlayer.volume_linear = Global.SFXVolumeMix


func dialogTrackSwitcher(track):
	match track:
		"mainFireScene":
			playDialog(DialogDb.mainFireScene)
			
		"ChangeFireTemp":
			playDialog(DialogDb.GirlTWarmer)
			
			
		#"ChangeFireTemp" when Global.fire_level >= 4:
			#currentTrack = "GirlTWarmer"
			#playDialog(DialogDb.GirlTWarmer)
		#"ChangeFireTemp" when Global.fire_level < 4:
			#currentTrack = "GirlBWarmer"
			#playDialog(DialogDb.GirlBWarmer)
			
		"GirlTWarmer":
			playDialog(DialogDb.GirlTWarmer)
		#"GirlBWarmer":
			#playDialog(DialogDb.GirlBWarmer)




func playDialog(dialog:Array):
	
	currentDialogScene= dialog[currentDialogPosition]
	prevDialogScene = dialog[currentDialogPosition - 1]
	
	if currentDialogPosition == 0:
		#the first item in the array is the name of the current track
		currentTrack = dialog[currentDialogPosition]
	else:
		if currentDialogPosition == 1:
			#add new dialog child
			get_tree().root.get_node("/root/Main/Dialog").add_child(currentDialogScene)
		else:
			#remove previous dialog child
			get_tree().root.get_node("/root/Main/Dialog").remove_child(prevDialogScene)
			#add new dialog child
			get_tree().root.get_node("/root/Main/Dialog").add_child(currentDialogScene)
		
		#set animation ref as currentAnim
		currentAnim = currentDialogScene.get_node("AnimationPlayer")
		currentTimer = currentDialogScene.get_node("Timer")
		currentAudioPlayer = currentDialogScene.get_node("AudioStreamPlayer")
		
		#wait until current animation is finished
		await currentAnim.animation_finished
		
		#stop the audio when the animation is finished
		currentAudioPlayer.stop()
		currentTimer.start()
		
		#wait again until the timer is finished
		await currentTimer.timeout
	
	
	if dialog.size() == currentDialogPosition + 2:
		#end of dialog sequence
		currentDialogPosition += 1
		
		#remove previous dialog child (I had to make it currentDialogScene becuase it increments prior to this
		#and becuase using prevDialogScene wasn't working for some reason(?)
		get_tree().root.get_node("/root/Main/Dialog").remove_child(currentDialogScene)
		
		#the last item in each array is the name of the following track (or track branch)
		currentTrack = dialog[currentDialogPosition]
		
		#set dialog pos to 0
		currentDialogPosition = 0
		
		#start new dialog sequence from new track or branch name
		dialogTrackSwitcher(currentTrack)
	else:
		#increment currentDialogPos
		currentDialogPosition += 1
		dialogTrackSwitcher(currentTrack)
