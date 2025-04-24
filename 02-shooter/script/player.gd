extends Node2D



func _process(delta: float) -> void:
    #input
    var direction: Vector2 = Input.get_vector("left", "right", "up", "down")
    position += direction * 200 * delta