extends AnimatableBody2D

var SPEED = -100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = 318
	position.y = -110


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position.x += SPEED * delta


func _on_timer_timeout() -> void:
	SPEED = -SPEED # Replace with function body.
