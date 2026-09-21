extends Control

@onready var volumeValueLabel = $BackgroundPanel/VBoxContainer/MarginContainer3/VolumeValueLabel
@onready var volumeSlider = $BackgroundPanel/VBoxContainer/MarginContainer2/VolumeSlider

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.volume = int(volumeSlider.value)
	volumeValueLabel.text = str(Global.volume)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_quit_button_pressed() -> void:
	get_tree().quit()




func _on_volume_slider_value_changed(value: float) -> void:
	print("str(v")
	Global.volume = int(volumeSlider.value)
	volumeValueLabel.text = str(Global.volume)
