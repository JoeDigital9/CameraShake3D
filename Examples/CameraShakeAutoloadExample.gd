extends Node
class_name CameraShakeAutoLoadExample

@export var camera : Camera3D

# init
func _ready() -> void:
	if is_instance_valid(CameraShake) == false: # not auto loaded
		printerr("CameraShake is not autoloaded or accessible")
		return

	_CameraShake._init_camera_shake(camera)

func _process(delta: float) -> void:
	# test input
	if Input.is_key_pressed(KEY_1):
		_CameraShake._custom_shake(3, 0.05)

	elif Input.is_key_pressed(KEY_2):
		_CameraShake._custom_shake(2, 0.1)

	elif Input.is_key_pressed(KEY_3):
		_CameraShake._custom_shake(1, 0.25)
		
	elif Input.is_key_pressed(KEY_4):
		_CameraShake._custom_shake(0.5, 0.5)
		pass
	pass