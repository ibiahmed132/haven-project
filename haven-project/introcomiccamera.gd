extends Camera2D
@onready var intromusic: AudioStreamPlayer2D = $"../introbuildupmusic"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	intromusic.play()
	position = Vector2(-574, -313)
	await get_tree().create_timer(5.75).timeout
	for i in range(0, 75):
		move_local_x((2*574)/75)
		await get_tree().create_timer(0.01).timeout
	await get_tree().create_timer(6.25).timeout
	for i in range(0, 75):
		move_local_x(-(2*574)/75)
		move_local_y((344+344)/75)
		await get_tree().create_timer(0.01).timeout
	await get_tree().create_timer(8.25).timeout
	for i in range(0, 75):
		move_local_x((2*574)/75)
		await get_tree().create_timer(0.01).timeout
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://main.tscn")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
