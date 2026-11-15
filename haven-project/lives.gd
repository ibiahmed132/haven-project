extends AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_frame(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_fire_hitbox_body_entered(body: CharacterBody2D) -> void:
	set_frame(frame + 1)
