# SimpleCameraShake
A simple system for easily implementing camera shake in your Godot projects.

**For best results**, have your core camera movement does through a Parent node to allow the Camera to shake freely as a child object.

# There are 3 ways to use CameraShaker!

1. AutoLoad the `CameraShakeNode` class and call `_init_camera_shake(pCamera)` to use globally
2. Attach this Node to the scene containing your Camera and set the export values in the inspector
3. Construct and init the `CameraShake` class directly by calling `CameraShake.new(camera)`
