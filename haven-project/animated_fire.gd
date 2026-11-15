extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_frame(0) # Replace with function body.

var next_frame

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	next_frame = frame + 1
	if next_frame == 4:
		next_frame = 0
	set_frame(next_frame)
