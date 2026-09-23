extends Node3D


@onready var animTree = $AnimationTree.get("parameters/playback")
@onready var AnimPlayer = $OtherAnimationPlayer
@onready var animTimer = $Timer

var idleAnimations = [
	"Armature|leaningIn",
	"Armature|LeaningInTurn",
	"Armature|armsUp"
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	girlTSmoking()


func girlTIdleAnimSwap():
	var selectedAnim = idleAnimations.pick_random()
	animTimer.wait_time = randf_range(3,10)
	animTree.travel(selectedAnim)
	
	animTimer.start()
	
	await animTimer.timeout
	girlTIdleAnimSwap()


func girlTSmoking():
	animTimer.wait_time = 4
	animTree.travel("Armature|Smoking")
	AnimPlayer.play("NewCigLightAnim")
	animTimer.start()
	
	await animTimer.timeout
	animTree.travel("Armature|leaningIn")
