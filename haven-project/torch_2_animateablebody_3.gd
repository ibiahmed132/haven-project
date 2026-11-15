extends AnimatableBody2D

var SPEED = 400

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../Marshy/CollisionShape2D".gameover.connect(_on_gameover)
	show()
	position.x = -476
	position.y = -1250


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	pass
	

func _on_gameover() -> void:
	hide()


func _on_torch_3_timer_timeout() -> void:
	SPEED = -SPEED # Replace with function body.
