# SimpleCameraShake
A simple system for easily implementing camera shake in your Godot projects.

# There are 3 ways to use SimpleCameraShake!

1. AutoLoad this class and call _init_camera_shake(pCamera) to use globally 
2. Attach this Node the scene containing your Camera and set the export values in the inspector
3. Construct and init the CameraShake class directly by calling CameraShake.new(camera)

NOTE: Your games core camera movement should be done through a Parent node of the camera as to allow the Camera to shake freely as a child object.
