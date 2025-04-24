extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0
var b: bool = true

@onready var animated_sprite = $AnimatedSprite2D

func is_collison_shape_exist():
	for child in get_children():
		if child is CollisionShape2D:
			return true
	return false


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")

	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h =true

	



	

	# 播放动画
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idel")
		else:
			animated_sprite.play("run") 
	else:
		if is_collison_shape_exist():
			animated_sprite.play("jump")
			
		else :
			animated_sprite.play("died")
			print("die")
			
	

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

