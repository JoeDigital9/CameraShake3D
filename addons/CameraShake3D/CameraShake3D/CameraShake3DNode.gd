extends Node
class_name CameraShake3DNode

# Autoload me or drag me into your scene

@export var camera: Camera3D

@export_group("Manual Settings")
@export var decay: float = 1
@export var magnitude: float = 1

var cameraShake: CameraShake3D = null

var initComplete: bool = false

func _ready():
	if camera == null:
		return

	cameraShake = CameraShake3D.new(camera)
	initComplete = true

func _process(delta):
	if not initComplete:
		return

	if cameraShake == null or camera == null:
		initComplete = false
		return

	cameraShake._update(delta)

func _init_camera_shake(pCamera):
	camera = pCamera
	cameraShake = CameraShake3D.new(camera)
	initComplete = true

func _shake():
	cameraShake._start_shake(decay, magnitude)

func _custom_shake(pDecay, pMagnitude): # maybe rename to "_start_shake()" ?
	cameraShake._start_shake(pDecay, pMagnitude)
