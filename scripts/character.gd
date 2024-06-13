extends CharacterBody2D
@onready var animated_sprite_2d = $AnimatedSprite2D
@export_category("Variables")
@export var _move_speed: float = 80
var vida: int = 30
var pebas_in_range = false

func _ready():
	if Game.map_position != null:
		if Game.inBattle == true:
			position = Vector2(150, 150)
		else:
			position = Game.map_position
	else:
		position = Vector2(150, 100)

func _physics_process(delta: float)-> void:
	if pebas_in_range == true:
		if Input.is_action_just_pressed("ui_accept"):
			pebas_in_range = false
			DialogueManager.show_example_dialogue_balloon(load("res://main.dialogue"),"start")
			return
	_move()

func _move() -> void:
	var _direction: Vector2 = Vector2(
		Input.get_axis("move_left", "move_right"),
		Input.get_axis("move_up", "move_down")
	)
	
	if Input.is_action_pressed("sprint"):
		_move_speed = 120
	elif Input.is_action_pressed("ui_text_backspace"):
		_move_speed = 800
	else:
		_move_speed = 80
	
	
	if Input.is_action_pressed("move_down"):
		animated_sprite_2d.animation = "Front"
	elif Input.is_action_pressed("move_up"):
		animated_sprite_2d.animation = "Back"
	elif Input.is_action_pressed("move_right"):
		animated_sprite_2d.animation = "Right"
	elif Input.is_action_pressed("move_left"):
		animated_sprite_2d.animation = "Left"
	else:
		animated_sprite_2d.animation = "Idle"
		
	
	
	velocity = _direction.normalized() * _move_speed
	move_and_slide()
	

func _on_area_2d_dialogue_body_entered(body):
	if body.has_method("pebas_npc"):
		pebas_in_range = true


func _on_area_2d_dialogue_body_exited(body):
	if body.has_method("pebas_npc"):
		pebas_in_range = false
