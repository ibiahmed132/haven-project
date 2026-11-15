extends AnimatableBody2D

var SPEED = 150

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	show()
	position.x = -321
	position.y = -800


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position.y += SPEED * delta
	

func _on_collision_shape_2d_gameover() -> void:
	hide()


func _on_torch_2_timer_timeout() -> void:
	SPEED = -SPEED # Replace with function body.
