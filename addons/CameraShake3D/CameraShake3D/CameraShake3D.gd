extends Object
class_name CameraShake3D

var camera: Camera3D

var strength: float = 1
var decay: float = 1
var magnitude: float = 1
var force: float = 0
var range: float = 1

var origin: Vector3
var offset := Vector2(1, 1)

var isShaking = false
var isAtOrigin = true

var _rng: RandomNumberGenerator = RandomNumberGenerator.new()

func _init(pCamera):
	camera = pCamera
	origin = camera.position

func _update(delta):
	if force > 0:
		# applying shake force
		force = max(force - (decay) * delta, 0)
		range = max(range - (decay) * delta, 0)
		shake()
	else:
		# clearing shake state
		isShaking = false
		pass
	
	# setting camera back to origin pos
	if isShaking == false and isAtOrigin == false:
		return_to_origin(delta)
		pass
	pass

func _start_shake(pDecay: float, pMagnitude: float):
	if camera == null:
		return

	decay = pDecay
	magnitude = pMagnitude

	range = 1
	force = 1
	isAtOrigin = false
	isShaking = true

func shake():
	if !isShaking:
		return

	var amount = force * strength
	var offsetX = offset.x * amount * _rng.randf_range(-range, range)
	var offsetY = offset.y * amount * _rng.randf_range(-range, range)

	# Todo: Add rotational shake

	camera.position = origin + Vector3(offsetX * magnitude, offsetY * magnitude, 0) # shake y axis

func return_to_origin(delta):
	camera.position = lerp(camera.position, origin, delta * 2)

	if origin.distance_to(camera.position) < 0.05:
		isAtOrigin = true
		pass
	pass
