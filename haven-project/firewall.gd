extends AnimatableBody2D

const SPEED = -100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	show() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += SPEED * delta


func _on_collision_shape_2d_gameover() -> void:
	hide() # Replace with function body.
