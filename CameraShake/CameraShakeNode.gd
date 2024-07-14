extends Node
class_name CameraShakeNode

# READ ME: 
#
# There are 3 ways to use SimpleCameraShake!
#
# 1. AutoLoad this class and call _init_camera_shake(pCamera) to use globally 
# 2. Attach this Node the scene containing your Camera and set the export values in the inspector
# 3. Construct and init the CameraShake class directly by calling CameraShake.new(camera)
#
# NOTE: Your games core camera movement should be done through a Parent node of the camera
# as to allow the Camera to shake freely as a child object.
#

@export var camera : Camera3D

@export_group("Manual Settings")
@export var decay : float = 1
@export var magnitude : float = 1

var cameraShake : CameraShake = null

var initComplete : bool = false

func _ready():
	if camera == null:
		return

	cameraShake = CameraShake.new(camera)
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
	cameraShake = CameraShake.new(camera)
	initComplete = true

func _shake():
	cameraShake._start_shake(decay, magnitude)

func _custom_shake(pDecay, pMagnitude):
	cameraShake._start_shake(pDecay, pMagnitude)
