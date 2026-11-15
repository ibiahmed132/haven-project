extends Node2D

var mouse_in_region = false
var mouse_clicked = false

@onready var menumusic: AudioStreamPlayer2D = $menumusic

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	menumusic.play() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if mouse_in_region and mouse_clicked:
		get_tree().change_scene_to_file("res://introcomic.tscn")


func _on_buttonarea_2d_mouse_entered() -> void:
	mouse_in_region = true


func _on_buttonarea_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			mouse_clicked = true
