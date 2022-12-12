extends CSGMesh3D

@export var volume : float = 0 # l (1000L = 1 cubic meter)
@export var density : float = 0 #kg/l
@export var mass : float = 0 #kg

# force_b = -pgV(p = fluid density, g = accel due to gravity)

var buoyant_force = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	self.buoyant_force = (1) * 9.8 * volume/2 #assume that half of hull volume is under water.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
