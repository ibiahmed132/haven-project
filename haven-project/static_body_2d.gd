extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = 358
	position.y = -110


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity.x = -400
