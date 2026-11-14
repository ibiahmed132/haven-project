extends CollisionShape2D

var health = 3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(health)


func _on_fire_hitbox_body_entered(body: Node2D) -> void:
	health -= 1
	if health == 0:
		get_tree().quit()
