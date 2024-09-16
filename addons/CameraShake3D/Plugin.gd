@tool
extends EditorPlugin

var AUTOLOAD_NAME = "_CameraShake3D"

var cameraShakeScriptPath = "res://addons/CameraShake3D/CameraShake3D/CameraShake3DNode.gd"

func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	add_autoload_singleton(AUTOLOAD_NAME, cameraShakeScriptPath)
	pass


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	remove_autoload_singleton(AUTOLOAD_NAME)
	pass
