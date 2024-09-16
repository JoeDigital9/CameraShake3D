# CameraShake3D
v1.0.1

A simple system for easily implementing camera shake in your 3D Godot projects.

**For best results**, have your core camera movement done through a Parent node to allow the Camera to shake 
freely as a child object is positioned by its parent.

# There are 3 ways to use SimpleCameraShake3D!

1. Enable the `CameraShake3D` plugin in Project Settings. Call `_CameraShake3D._init_camera_shake(pCamera)` to init
	- This is the most simple way.

2. Attach this Node to the scene containing your Camera and set the export values in the inspector
	- A simple alternative way to using Autoload.

3. Construct and init the `CameraShake` class directly by calling `CameraShake.new(camera)`. 
	- with the Construct way, you must also calling `CameraShake._update(delta)` in the `_process(delta)` function.

For more information, please see the Examples folder in the repo!
