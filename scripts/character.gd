extends CharacterBody2D

@export_category("Variables")
@export var _move_speed: float = 64.0
var vida: int = 30

func _ready():
	position = Vector2(320/2, 180/2)

func _physics_process(delta: float)-> void:
	_move()

func _move() -> void:
	var _direction: Vector2 = Vector2(
		Input.get_axis("move_left", "move_right"),
		Input.get_axis("move_up", "move_down")
	)
	
	velocity = _direction.normalized() * _move_speed
	move_and_slide()
