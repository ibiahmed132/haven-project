extends AnimatableBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../Marshy/MarshyCollisionShape2D".gameover.connect(_on_gameover)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_gameover() -> void:
	hide()


func _on_marshy_pigeontime() -> void:
	pass
