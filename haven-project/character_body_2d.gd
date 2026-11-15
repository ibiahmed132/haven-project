extends CharacterBody2D

@onready var hold_timer: Timer = $HoldTimer

const SPEED = 200
const JUMP_VELOCITY = -400.0

var megabounce = 0
var is_down = false

signal pigeontime

@onready var playbox = $CollisionShape2D

func _physics_process(delta: float) -> void:
	var lives = playbox.health
	if lives == 0:
		return
 	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction and not is_down:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	# Add the gravity.
	if not is_on_floor():
		print(is_down)
		
		if Input.is_action_just_pressed("ui_accept"):
			hold_timer.start()
			is_down = true
			
		if (not Input.is_action_pressed("ui_accept")) and not hold_timer.is_stopped():
			hold_timer.stop()
			_on_hold_timer_timeout()
			
		if is_down == true and megabounce == 0:
			velocity.y = 0
			megabounce = 1
			
		if megabounce == 0:
			velocity += get_gravity() * delta
		elif megabounce == 1 and not is_down:    
			velocity += 11 * get_gravity() * delta
			megabounce = 1
			
	if is_on_floor():
		if megabounce == 0:
			velocity.y = JUMP_VELOCITY
		else:
			velocity.y = 1.4 * JUMP_VELOCITY
			megabounce = 0
	
	move_and_slide()


func _on_hold_timer_timeout() -> void:
	is_down = false


func _on_pigeonarea_body_entered(body: Node2D) -> void:
	pigeontime.emit()
