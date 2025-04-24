extends Sprite2D

var pos: Vector2 = Vector2.ZERO
const speed: int = 200 
var test_scale: Vector2 = Vector2(2, 2)
var test_scale_ratio: Vector2 = Vector2(0.1, 0.1)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# print('ready')
	pos = Vector2(200, 300)
	position = pos
	scale = test_scale
	# var test_rotation = 45
	# rotation_degrees = test_rotation
	#Vector2 Vector2(x: float, y: float)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# print('process')
	pos.x = pos.x + speed * delta
	position = pos
	# test_scale = test_scale + test_scale_ratio
	# scale = test_scale


	
	
