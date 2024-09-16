extends Node
class_name CameraShakeAutoLoadExample

# READ ME:
# To this example work, uncomment all the _CameraShake3D calls
# They are commented out to avoid compiler errors in case the plugin is not enabled

@export var camera : Camera3D

var warn_message = "[CameraShake3D] [AutoloadExample] You must enable the plugin and uncomment lines in this script"

# init
func _ready() -> void:
	if is_instance_valid(CameraShake3D) == false: # not auto loaded
		printerr("CameraShake3D is not autoloaded or accessible")
		return

	#_CameraShake3D._init_camera_shake(camera)
	print(warn_message)

func _process(delta: float) -> void:
	# test input
	if Input.is_key_pressed(KEY_1):
		#_CameraShake3D._custom_shake(3, 0.05)
		print(warn_message)

	elif Input.is_key_pressed(KEY_2):
		#_CameraShake3D._custom_shake(2, 0.1)
		print(warn_message)

	elif Input.is_key_pressed(KEY_3):
		#_CameraShake3D._custom_shake(1, 0.25)
		print(warn_message)
		
	elif Input.is_key_pressed(KEY_4):
		#_CameraShake3D._custom_shake(0.5, 0.5)
		print(warn_message)
		pass
	pass
