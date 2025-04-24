extends Node2D

var speed: float = 60
var direction: int =1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite_2d = $AnimatedSprite2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	position.x += speed * delta * direction
