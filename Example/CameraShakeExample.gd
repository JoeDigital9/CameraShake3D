extends Node
class_name CameraShakeExample

@export var shake_node : CameraShakeNode

var can_shake : bool = true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	if Input.is_key_pressed(KEY_1):
		shake_node._custom_shake(3, 0.1)
		can_shake = false
	elif Input.is_key_pressed(KEY_2):
		shake_node._custom_shake(2, 0.25)
		can_shake = false
	elif Input.is_key_pressed(KEY_3):
		shake_node._custom_shake(1, 0.5)
		can_shake = false
	elif Input.is_key_pressed(KEY_4):
		shake_node._custom_shake(0.5, 1)
		can_shake = false
		pass

	
	pass
