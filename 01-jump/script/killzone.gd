extends Area2D


@onready var timer = $Timer        #获取计时器，当掉落触发死亡地带后计时0.6秒，随后重新开始场景

func _on_body_entered(body:Node2D) -> void:
    #print("you die")
    Engine.time_scale = 0.5
    body.get_node("CollisionShape2D").queue_free()
    timer.start()
    
	


func _on_timer_timeout() -> void:
    Engine.time_scale = 1
    get_tree().reload_current_scene()
	
