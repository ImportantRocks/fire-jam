extends Interactable

func _ready():
	DialogDb.fireup.connect(_increase_fire)

func _increase_fire():
	$AudioStreamPlayer3D.play()
	
