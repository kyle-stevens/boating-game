extends Node3D


@onready var wave_mesh = get_node("CSGMesh3D").mesh

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var surface_array = []
	surface_array.resize(Mesh.ARRAY_MAX)
	
	
	
	var verts = PackedVector3Array()
	var uvs = PackedVector2Array()
	var normals = PackedVector3Array()
	var indices = PackedInt32Array()
	
	var mdt = MeshDataTool.new()
	mdt.create_from_surface(wave_mesh, 0)
	print(mdt.get_vertex_count())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
