extends RigidBody3D

var net_force : Vector3 = Vector3.ZERO
var volume_total : int = 0
var volume_submerged : int = 0

var is_submerged : bool = false
var was_submerged : bool = false
# Transform is at botton of mesh

# Called when the node enters the scene tree for the first time.
func _ready():
	self.volume_total = 2*1*2
	self.volume_submerged = 0
	
	self.net_force += Vector3(0, -9.8*self.mass, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		self.apply_impulse(Vector3(1,-0.25,0), $Node3D.global_position)
