extends CollisionShape2D

var health = 3

signal gameover

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_fire_hitbox_body_entered(body: CharacterBody2D) -> void:
	health -= 1
	if health == 0:
		gameover.emit()
		await get_tree().create_timer(2).timeout
		get_tree().quit()
