extends RigidBody3D

var rolling_force = 20
var jump_imbulse = 650

# Called when the node enters the scene tree for the first time.
func _ready():
	$CameraRig.set_as_top_level(true)
	$FloorCheck.set_as_top_level(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var old_cam_pos = $CameraRig.global_transform.origin
	var ball_pos  = self.global_transform.origin
	var new_cam_pos = lerp(old_cam_pos,ball_pos,.1)
	$CameraRig.global_transform.origin=new_cam_pos
	$FloorCheck.global_transform.origin = self.global_transform.origin
	
	if Input.is_action_just_pressed("jump") and $FloorCheck.is_colliding :
		apply_central_impulse(Vector3.UP * jump_imbulse)
		$SfxJump.play()
	if Input.is_action_pressed("forward"):
		angular_velocity.z += rolling_force * delta
	if Input.is_action_pressed("backward"):
		angular_velocity.z -= rolling_force * delta
	if Input.is_action_pressed("left"):
		angular_velocity.x += rolling_force * delta
	if Input.is_action_pressed("right"):
		angular_velocity.x -= rolling_force * delta
		
		
