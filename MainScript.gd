extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().root.get_node("/root/Main/CanvasLayer/Dialog").add_child(DialogDb.dialog0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
