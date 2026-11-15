extends AnimatableBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	show() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$"../Marshy/CollisionShape2D".gameover.connect(_on_gameover)


func _on_marshy_pigeontime() -> void:
	pass

func _on_gameover() -> void:
	hide()
