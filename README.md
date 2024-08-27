# SimpleCameraShake3D
A simple system for easily implementing camera shake in your 3D Godot projects.

**For best results**, have your core camera movement done through a Parent node to allow the Camera to shake 
freely as a child object is positioned by its parent.

# There are 3 ways to use SimpleCameraShake3D!

1. AutoLoad the `CameraShakeNode` class and call `_init_camera_shake(pCamera)` to use globally
	- This is the most simple way.

2. Attach this Node to the scene containing your Camera and set the export values in the inspector
	- A simple alternative way to using Autoload.

3. Construct and init the `CameraShake` class directly by calling `CameraShake.new(camera)`. 
	- with the Construct way, you must also calling `CameraShake._update(delta)` in the `_process(delta)` function.
