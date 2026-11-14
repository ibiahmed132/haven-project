extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $"..".velocity.y >= 0:
		set_frame(0)
	else:
		set_frame(1)
		
	if $"..".velocity.x < 0:
		flip_h = true
	else:
		flip_h = false
