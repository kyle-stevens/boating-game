extends Node3D

var curr_pos = Vector3.ZERO
var prev_pos = Vector3.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	prev_pos = curr_pos
	curr_pos = $RigidBody3D.global_position
	print(curr_pos - prev_pos)
	# Gravity 
	$RigidBody3D.apply_central_force(Vector3(0, -9.8*$RigidBody3D.mass, 0))
	
	# Buoyant Force
	if curr_pos.y < 0:
		$RigidBody3D.apply_central_force(Vector3(0, $RigidBody3D/Hull_Test.buoyant_force, 0))
	#print($RigidBody3D.global_position)
#	print($RigidBody3D/Hull_Test.buoyant_force)
#	if $RigidBody3D.global_position.y < 0:
#		$RigidBody3D.apply_central_force(Vector3(0, -9.8*$RigidBody3D.mass + $RigidBody3D/Hull_Test.buoyant_force, 0))
#	else:
#		$RigidBody3D.apply_central_force(Vector3(0, -9.8*$RigidBody3D.mass, 0))
