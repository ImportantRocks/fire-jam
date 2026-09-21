extends Control

@onready var masterVolumeValueLabel = $BackgroundPanel/VBoxContainer/MarginContainer3/MasterVolumeValueLabel
@onready var masterVolumeSlider = $BackgroundPanel/VBoxContainer/MarginContainer2/MasterVolumeSlider

@onready var musicVolumeValueLabel = $BackgroundPanel/VBoxContainer/MarginContainer6/MusicVolumeValueLabel
@onready var musicVolumeSlider = $BackgroundPanel/VBoxContainer/MarginContainer4/MusicVolumeSlider

@onready var SFXVolumeValueLabel = $BackgroundPanel/VBoxContainer/MarginContainer7/SFXVolumeValueLabel
@onready var SFXVolumeSlider = $BackgroundPanel/VBoxContainer/MarginContainer5/SFXVolumeSlider

var masterVolumeLabelInt
var musicVolumeLabelInt
var SFXVolumeLabelInt

var main


func _ready() -> void:
	main = get_tree().root.get_node("/root/Main")
	
	#setting the value labels for each volume slider
	
	masterVolumeLabelInt = int(Global.masterVolume*100)
	masterVolumeValueLabel.text = str(masterVolumeLabelInt)
	
	musicVolumeLabelInt = int(Global.musicVolume*100)
	musicVolumeValueLabel.text = str(musicVolumeLabelInt)
	
	SFXVolumeLabelInt = int(Global.SFXVolume*100)
	SFXVolumeValueLabel.text = str(SFXVolumeLabelInt)



func _on_quit_button_pressed() -> void:
	get_tree().quit()



func _on_master_volume_slider_value_changed(value: float) -> void:
	Global.masterVolume = value/100
	masterVolumeLabelInt = int(Global.masterVolume*100)
	masterVolumeValueLabel.text = str(masterVolumeLabelInt)
	main.updateMasterVolume()



func _on_music_volume_slider_value_changed(value: float) -> void:
	Global.musicVolume = value/100
	musicVolumeLabelInt = int(Global.musicVolume*100)
	musicVolumeValueLabel.text = str(musicVolumeLabelInt)
	main.updateMusicVolume()


func _on_sfx_volume_slider_value_changed(value: float) -> void:
	Global.SFXVolume = value/100
	SFXVolumeLabelInt = int(Global.SFXVolume*100)
	SFXVolumeValueLabel.text = str(SFXVolumeLabelInt)
	main.updateSFXVolume()
