extends AnimatableBody3D

@export var look_sensitivity: float = 0.005

@onready var head = $Head
@onready var camera = $Head/Camera3D
@onready var ray = $Head/InteractRay

var pauseMenu




func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	pauseMenu = get_tree().root.get_node("/root/Main/PauseMenu")
	pauseMenu.hide()

func _unhandled_input(event):
	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		head.rotate_y(-event.relative.x * look_sensitivity)
		camera.rotate_x(-event.relative.y * look_sensitivity)
		camera.rotation.x = clamp(camera.rotation.x, deg_to_rad(-80), deg_to_rad(80))
		head.rotation.y = clamp(head.rotation.y, deg_to_rad(-80), deg_to_rad(80))

	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_ESCAPE:
			if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
				print("ESC Menu ON")
				Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
				#THIS MIGHT BE STUPID - set the raycast to 0 length so that you can't interact with anything
				ray.target_position = Vector3(0,0,0)
				get_tree().paused = true
				pauseMenu.show()
			else: 
				print("ESC Menu OFF")
				pauseMenu.hide()
				get_tree().paused = false
				#set the raycast back to (0,0,-4) so that you can interact with the world again
				ray.target_position = Vector3(0,0,-4)
				Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
