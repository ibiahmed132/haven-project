extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var megabounce = 0

func _physics_process(delta: float) -> void:
	print(position.y)
 	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction and not Input.is_action_pressed("ui_accept"):
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	# Add the gravity.
	if not is_on_floor():
		if Input.is_action_pressed("ui_accept") and megabounce == 0:
			velocity.y = 0
			velocity.x = 0
			megabounce = 1
			
		if megabounce == 0:
			velocity += get_gravity() * delta
		elif megabounce == 1 and not Input.is_action_pressed("ui_accept"):
			velocity += 10 * get_gravity() * delta
			megabounce = 1
			
	if is_on_floor():
		if megabounce == 0:
			velocity.y = JUMP_VELOCITY
		else:
			velocity.y = 1.4 * JUMP_VELOCITY
			megabounce = 0
	
	move_and_slide()
