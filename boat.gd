extends CharacterBody3D


#const SPEED = 5.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
var time = 0.0

@export var turning_degrees = 0.005
@export var SPEED = 5.0

func _ready():
	print(position)

func _physics_process(delta):
	
	velocity.x = (0 * global_transform.basis.z).x
	velocity.z = (0 * global_transform.basis.z).z
	#position.y = -0.35 + (sin(time) + 1)
	#print(-0.35 + (sin(time) + 1)) #cannot use delta for this needs to be some sort of time function
	#time += 0.01
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle Jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
	#	velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
#	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
#	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
#	if direction:
#		velocity.x = direction.x * SPEED * -1
#		velocity.z = direction.z * SPEED * -1
#	else:
#		velocity.x = move_toward(velocity.x, 0, SPEED)
#		velocity.z = move_toward(velocity.z, 0, SPEED)
	
	if Input.is_action_pressed("ui_left"):
		self.rotate_y(0.005)
	if Input.is_action_pressed("ui_right"):
		self.rotate_y(-0.005)
	if Input.is_action_pressed("ui_up")	:
		velocity = SPEED * global_transform.basis.z
	move_and_slide()
