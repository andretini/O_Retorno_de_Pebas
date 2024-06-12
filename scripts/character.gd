extends CharacterBody2D

@export_category("Variables")
@export var _move_speed: float = 64.0

var pebas_in_range = false

func _physics_process(delta: float)-> void:
	if pebas_in_range == true:
		if Input.is_action_just_pressed("ui_accept"):
			DialogueManager.show_example_dialogue_balloon(load("res://main.dialogue"),"start")
			return
	_move()

func _move() -> void:
	var _direction: Vector2 = Vector2(
		Input.get_axis("move_left", "move_right"),
		Input.get_axis("move_up", "move_down")
	)
	
	velocity = _direction.normalized() * _move_speed
	move_and_slide()



func _on_area_2d_dialogue_body_entered(body):
	if body.has_method("pebas_npc"):
		pebas_in_range = true


func _on_area_2d_dialogue_body_exited(body):
	if body.has_method("pebas_npc"):
		pebas_in_range = false
