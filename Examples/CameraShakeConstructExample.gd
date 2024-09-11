extends Node
class_name CameraShakeConstructExample

@export var camera : Camera3D

var cameraShake : CameraShake3D

# init
func _ready() -> void:
	cameraShake = CameraShake3D.new(camera)

func _process(delta: float) -> void:
	# must manually update the camera shake
	cameraShake._update(delta)

	# test input
	if Input.is_key_pressed(KEY_1):
		cameraShake._start_shake(3, 0.05)

	elif Input.is_key_pressed(KEY_2):
		cameraShake._start_shake(2, 0.1)

	elif Input.is_key_pressed(KEY_3):
		cameraShake._start_shake(1, 0.25)
		
	elif Input.is_key_pressed(KEY_4):
		cameraShake._start_shake(0.5, 0.5)
		pass
	
	
	pass
