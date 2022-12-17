extends Node3D
var time

# Called when the node enters the scene tree for the first time.
func _ready():
	time = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$CSGMesh3D.position.y = 0.1 * (sin(time))
	time += 0.01
