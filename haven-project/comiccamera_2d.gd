extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(-780, -386)
	zoom = Vector2(1.555, 1.25)
	await get_tree().create_timer(2).timeout
	for i in range(0, 50):
		position += Vector2(15.6, 7.72)
		zoom -= Vector2(0.021, 0.0149)
		await get_tree().create_timer(0.01).timeout


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
