extends Object
class_name CameraShake

var camera : Camera3D

var strength : float = 1
var decay : float = 1
var magnitude : float = 1

var isShaking = false
var offset = Vector2(1, 1)
var baseForce : float = 1
var force : float = 0

var _rng : RandomNumberGenerator = RandomNumberGenerator.new()

func _init(pCamera):
	camera = pCamera

func _update(delta):
	if force > 0:
		force = max(force - (decay) * delta, 0)
		shake()
	else:
		isShaking = false
		pass
	pass

func _start_shake(pMagnitude:float, pDecay:float):
	if camera == null:
		return

	decay = pDecay
	magnitude = pMagnitude

	isShaking = true
	force = baseForce

func shake():
	if !isShaking: 
		return
	
	var amount = force * strength
	var offsetX = offset.x * amount * _rng.randf_range(-1, 1)
	var offsetY = offset.y * amount * _rng.randf_range(-1, 1)

	# Todo: Add rotational shake

	# Todo: Force the camera to return to its origin position

	camera.position += Vector3(offsetX * magnitude, offsetY * magnitude, 0) # shake y axis
