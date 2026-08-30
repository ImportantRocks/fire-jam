extends AnimatableBody3D

@export var look_sensitivity: float = 0.005

@onready var head = $Head
@onready var camera = $Head/Camera3D
@onready var raycast = $Head/Camera3D/RayCast3D
@onready var hand = $Head/Hand




func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _unhandled_input(event):
	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		head.rotate_y(-event.relative.x * look_sensitivity)
		camera.rotate_x(-event.relative.y * look_sensitivity)
		camera.rotation.x = clamp(camera.rotation.x, deg_to_rad(-80), deg_to_rad(80))
		head.rotation.y = clamp(head.rotation.y, deg_to_rad(-80), deg_to_rad(80))



# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var object = raycast.get_collider()
	if raycast.is_colliding():
		if object.is_in_group("pickable"):
			if Input.is_action_pressed("Interact"):
				object.global_position = hand.global_position
				object.global_rotation = hand.global_rotation
				object.collision_layer = 2
	#pass
